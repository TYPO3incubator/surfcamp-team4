<?php
declare(strict_types=1);

use TYPO3\CMS\Core\Utility\ExtensionManagementUtility;

call_user_func(static function() {
    ExtensionManagementUtility::addTcaSelectItem(
        'tt_content',
        'CType',
        [
            'label' => 'LLL:EXT:football/Resources/Private/Language/locallang_db.tt_content.hero.xlf:title',
            'value' => 'hero',
            'group' => 'default',
            'description' => 'LLL:EXT:football/Resources/Private/Language/locallang_db.tt_content.hero.xlf:description',
            'icon' => 'content-header',
        ]
    );

    // add the icon to the typeicon_class
    $GLOBALS['TCA']['tt_content']['ctrl']['typeicon_classes']['hero'] = 'content-header';

    $temporaryColumns = [
        'button_text' => [
            'label' => 'LLL:EXT:football/Resources/Private/Language/locallang_db.tt_content.hero.xlf:button_text',
            'config' => [
                'type' => 'input',
                'size' =>  50,
                'eval' => 'trim'
            ]
        ],
        'button_link' => [
            'label' => 'LLL:EXT:football/Resources/Private/Language/locallang_db.tt_content.hero.xlf:button_link',
            'config' => [
                'type' => 'input',
                'renderType' => 'inputLink',
                'size' => 50,
                'eval' => 'trim',
            ],
        ],
    ];

    ExtensionManagementUtility::addTCAcolumns(
        'tt_content',
        $temporaryColumns
    );

    $GLOBALS['TCA']['tt_content']['types']['hero'] = [
        'showitem' => '
        --div--;LLL:EXT:core/Resources/Private/Language/Form/locallang_tabs.xlf:general,
            --palette--;;general,
            --palette--;;headers,
            image,
            button_text,
            button_link,
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
        'columnsOverrides' => [
            'header' => [
                'config' => [
                    'type' => 'text',
                    'cols' => 20,
                    'rows' => 2,
                ]
            ],
            'image' => [
                'config' => [
                    'minitems' => 1,
                    'maxitems' => 1
                ],
            ],
        ],
    ];
});
