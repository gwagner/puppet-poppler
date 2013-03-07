class poppler
{
    include repo_epel

    package {
        # required by the web-indexing service to turn a PDF into a text file
        ['poppler', 'poppler-utils', 'libevent', 'libevent-devel']:
            ensure => installed,
            provider => 'yum',
            require => Yumrepo['epel'];
    }
}