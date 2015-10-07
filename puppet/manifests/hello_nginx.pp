class{ 'nginx':}

nginx::resource::upstream { 'tomcat':
    members => [
        'localhost:8080',
    ],
}

nginx::resource::vhost { 'myapp.example.com':
    proxy => 'http://tomcat',
}

