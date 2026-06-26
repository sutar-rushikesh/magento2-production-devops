<?php
return [
    'remote_storage' => [
        'driver' => 'file'
    ],
    'backend' => [
        'frontName' => 'adminportal'
    ],
    'cache' => [
        'graphql' => [
            'id_salt' => 'Bft0J0Iugve6piDpym0eWl8ZCUvgplud'
        ],
        'frontend' => [
            'default' => [
                'id_prefix' => '69d_',
                'backend_options' => [
                    'serializer' => 'igbinary',
                    'server' => 'magento-redis',
                    'database' => '0',
                    'port' => '6379',
                    'password' => '',
                    'compress_data' => '1',
                    'compression_lib' => '',
                    'use_lua' => '0',
                    'use_lua_on_gc' => '1'
                ],
                'backend' => 'redis'
            ],
            'page_cache' => [
                'id_prefix' => '69d_',
                'backend_options' => [
                    'serializer' => 'igbinary',
                    'server' => 'magento-redis',
                    'database' => '1',
                    'port' => '6379',
                    'password' => '',
                    'compress_data' => '0',
                    'compression_lib' => ''
                ],
                'backend' => 'redis'
            ]
        ],
        'allow_parallel_generation' => false
    ],
    'config' => [
        'async' => 0
    ],
    'queue' => [
        'consumers_wait_for_messages' => 1
    ],
    'crypt' => [
        'key' => 'base64TVP60aDIio2GU6lI7pLBMmQgsrrax9i6QKIAeTZ/i/0='
    ],
    'db' => [
        'table_prefix' => '',
        'connection' => [
            'default' => [
                'host' => 'magento-mysql',
                'dbname' => 'magento',
                'username' => 'magento',
                'password' => 'ChangeMe123',
                'model' => 'mysql4',
                'engine' => 'innodb',
                'active' => '1',
                'driver_options' => [
                    1014 => false
                ]
            ]
        ]
    ],
    'resource' => [
        'default_setup' => [
            'connection' => 'default'
        ]
    ],
    'x-frame-options' => 'SAMEORIGIN',
    'MAGE_MODE' => 'production',
    'session' => [
        'save' => 'files'
    ],
    'lock' => [
        'provider' => 'db'
    ],
    'directories' => [
        'document_root_is_pub' => true
    ],
    'cache_types' => [
        'config' => 1,
        'layout' => 1,
        'block_html' => 1,
        'collections' => 1,
        'reflection' => 1,
        'db_ddl' => 1,
        'compiled_config' => 1,
        'eav' => 1,
        'customer_notification' => 1,
        'config_integration' => 1,
        'config_integration_api' => 1,
        'graphql_query_resolver_result' => 1,
        'full_page' => 1,
        'config_webservice' => 1,
        'translate' => 1
    ],
    'downloadable_domains' => [
        'test.dyna.com'
    ],
    'install' => [
        'date' => 'Thu, 18 Jun 2026 06:02:22 +0000'
    ]
];
