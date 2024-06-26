<?php
declare(strict_types=1);

use TYPO3\CMS\Core\Utility\ExtensionManagementUtility;

call_user_func(static function() {
    ExtensionManagementUtility::addTcaSelectItem(
        'tt_content',
        'CType',
        [
            'label' => 'LLL:EXT:football/Resources/Private/Language/locallang_db.tt_content.cta.xlf:title',
            'value' => 'cta',
            'group' => 'default',
            'description' => 'LLL:EXT:football/Resources/Private/Language/locallang_db.tt_content.cta.xlf:description',
            'icon' => 'actions-window-open',
        ]
    );

    // add the icon to the typeicon_class
    $GLOBALS['TCA']['tt_content']['ctrl']['typeicon_classes']['cta'] = 'actions-window-open';

    $temporaryColumns = [
        'buttons' => [
            'label' => 'LLL:EXT:football/Resources/Private/Language/locallang_db.tt_content.cta.xlf:buttons',
            'config' => [
                'type' => 'inline',
                'foreign_table' => 'tx_football_domain_model_link',
                'foreign_table_field' => 'parenttable',
                'foreign_field' => 'parentid',
                'minitems' => 1,
                'maxitems' => 2,
                'appearance' => [
                    'useSortable' => true
                ],
                'overrideChildTca' => [
                    'types' => [
                        [
                            'showitem' => 'title,url'
                        ],
                    ],
                    'columns' => [
                        'url' => [
                            'config' => [
                                'allowedTypes' => ['page', 'url'],
                            ],
                        ],
                    ],
                ],
            ],
        ],
    ];

    ExtensionManagementUtility::addTCAcolumns(
        'tt_content',
        $temporaryColumns
    );

    $GLOBALS['TCA']['tt_content']['types']['cta'] = [
        'showitem' => '
        --div--;LLL:EXT:core/Resources/Private/Language/Form/locallang_tabs.xlf:general,
            --palette--;;general,
            --palette--;;headers,
            buttons,
        --div--;LLL:EXT:core/Resources/Private/Language/Form/locallang_tabs.xlf:appearance,
            --palette--;;frames,
            --palette--;;appearanceLinks,
        --div--;LLL:EXT:core/Resources/Private/Language/Form/locallang_tabs.xlf:language,
            --palette--;;language,
        --div--;LLL:EXT:core/Resources/Private/Language/Form/locallang_tabs.xlf:access,
            --palette--;;hidden,
            --palette--;;access,
        --div--;LLL:EXT:core/Resources/Private/Language/Form/locallang_tabs.xlf:categories,
            categories,
        --div--;LLL:EXT:core/Resources/Private/Language/Form/locallang_tabs.xlf:notes,
            rowDescription,
        --div--;LLL:EXT:core/Resources/Private/Language/Form/locallang_tabs.xlf:extended,
    ',
    ];
});
