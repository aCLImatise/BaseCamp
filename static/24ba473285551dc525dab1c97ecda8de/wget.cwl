class: CommandLineTool
id: wget.cwl
inputs:
- id: in__version_display
  doc: ',  --version                   display the version of Wget and exit'
  type: boolean
  inputBinding:
    prefix: -V
- id: in__background_go
  doc: ',  --background                go to background after startup'
  type: boolean
  inputBinding:
    prefix: -b
- id: in__executecommand_execute
  doc: ",  --execute=COMMAND           execute a `.wgetrc'-style command"
  type: boolean
  inputBinding:
    prefix: -e
- id: in__outputfilefile_log
  doc: ',  --output-file=FILE          log messages to FILE'
  type: File
  inputBinding:
    prefix: -o
- id: in__appendoutputfile_append
  doc: ',  --append-output=FILE        append messages to FILE'
  type: File
  inputBinding:
    prefix: -a
- id: in__debug_print
  doc: ',  --debug                     print lots of debugging information'
  type: boolean
  inputBinding:
    prefix: -d
- id: in__quiet_quiet
  doc: ',  --quiet                     quiet (no output)'
  type: boolean
  inputBinding:
    prefix: -q
- id: in__verbose_verbose
  doc: ',  --verbose                   be verbose (this is the default)'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_no_verbose
  doc: turn off verboseness, without being quiet
  type: boolean
  inputBinding:
    prefix: --no-verbose
- id: in_report_speed
  doc: output bandwidth as TYPE.  TYPE can be bits
  type: string
  inputBinding:
    prefix: --report-speed
- id: in__inputfilefile_download
  doc: ',  --input-file=FILE           download URLs found in local or external FILE'
  type: boolean
  inputBinding:
    prefix: -i
- id: in__forcehtml_treat
  doc: ',  --force-html                treat input file as HTML'
  type: boolean
  inputBinding:
    prefix: -F
- id: in__baseurl_resolves
  doc: ",  --base=URL                  resolves HTML input-file links (-i -F)\nrelative\
    \ to URL"
  type: boolean
  inputBinding:
    prefix: -B
- id: in_config
  doc: specify config file to use
  type: File
  inputBinding:
    prefix: --config
- id: in_no_config
  doc: do not read any config file
  type: boolean
  inputBinding:
    prefix: --no-config
- id: in_rejected_log
  doc: log reasons for URL rejection to FILE
  type: File
  inputBinding:
    prefix: --rejected-log
- id: in__triesnumber_set
  doc: ',  --tries=NUMBER              set number of retries to NUMBER (0 unlimits)'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_retry_conn_refused
  doc: retry even if connection is refused
  type: boolean
  inputBinding:
    prefix: --retry-connrefused
- id: in_retry_on_http_error
  doc: comma-separated list of HTTP errors to retry
  type: string
  inputBinding:
    prefix: --retry-on-http-error
- id: in__outputdocumentfile_write
  doc: ',  --output-document=FILE      write documents to FILE'
  type: File
  inputBinding:
    prefix: -O
- id: in_no_clobber
  doc: "skip downloads that would download to\nexisting files (overwriting them)"
  type: boolean
  inputBinding:
    prefix: --no-clobber
- id: in_no_netrc
  doc: don't try to obtain credentials from .netrc
  type: boolean
  inputBinding:
    prefix: --no-netrc
- id: in__continue_resume
  doc: ',  --continue                  resume getting a partially-downloaded file'
  type: boolean
  inputBinding:
    prefix: -c
- id: in_start_pos
  doc: start downloading from zero-based position OFFSET
  type: string
  inputBinding:
    prefix: --start-pos
- id: in_progress
  doc: select progress gauge type
  type: string
  inputBinding:
    prefix: --progress
- id: in_show_progress
  doc: display the progress bar in any verbosity mode
  type: boolean
  inputBinding:
    prefix: --show-progress
- id: in__timestamping_reretrieve
  doc: ",  --timestamping              don't re-retrieve files unless newer than"
  type: boolean
  inputBinding:
    prefix: -N
- id: in_no_use_server_timestamps
  doc: "don't set the local file's timestamp by\nthe one on the server"
  type: boolean
  inputBinding:
    prefix: --no-use-server-timestamps
- id: in__serverresponse_print
  doc: ',  --server-response           print server response'
  type: boolean
  inputBinding:
    prefix: -S
- id: in_spider
  doc: don't download anything
  type: boolean
  inputBinding:
    prefix: --spider
- id: in__timeoutseconds_set
  doc: ',  --timeout=SECONDS           set all timeout values to SECONDS'
  type: boolean
  inputBinding:
    prefix: -T
- id: in_dns_timeout
  doc: set the DNS lookup timeout to SECS
  type: string
  inputBinding:
    prefix: --dns-timeout
- id: in_connect_timeout
  doc: set the connect timeout to SECS
  type: string
  inputBinding:
    prefix: --connect-timeout
- id: in_read_timeout
  doc: set the read timeout to SECS
  type: string
  inputBinding:
    prefix: --read-timeout
- id: in__waitseconds_wait
  doc: ',  --wait=SECONDS              wait SECONDS between retrievals'
  type: boolean
  inputBinding:
    prefix: -w
- id: in_wait_retry
  doc: wait 1..SECONDS between retries of a retrieval
  type: long
  inputBinding:
    prefix: --waitretry
- id: in_random_wait
  doc: wait from 0.5*WAIT...1.5*WAIT secs between retrievals
  type: boolean
  inputBinding:
    prefix: --random-wait
- id: in_no_proxy
  doc: explicitly turn off proxy
  type: boolean
  inputBinding:
    prefix: --no-proxy
- id: in__quotanumber_set
  doc: ',  --quota=NUMBER              set retrieval quota to NUMBER'
  type: boolean
  inputBinding:
    prefix: -Q
- id: in_bind_address
  doc: bind to ADDRESS (hostname or IP) on local host
  type: string
  inputBinding:
    prefix: --bind-address
- id: in_limit_rate
  doc: limit download rate to RATE
  type: string
  inputBinding:
    prefix: --limit-rate
- id: in_no_dns_cache
  doc: disable caching DNS lookups
  type: boolean
  inputBinding:
    prefix: --no-dns-cache
- id: in_restrict_file_names
  doc: restrict chars in file names to ones OS allows
  type: File
  inputBinding:
    prefix: --restrict-file-names
- id: in_ignore_case
  doc: ignore case when matching files/directories
  type: boolean
  inputBinding:
    prefix: --ignore-case
- id: in_four
  doc: ',  --inet4-only                connect only to IPv4 addresses'
  type: boolean
  inputBinding:
    prefix: '-4'
- id: in_six
  doc: ',  --inet6-only                connect only to IPv6 addresses'
  type: boolean
  inputBinding:
    prefix: '-6'
- id: in_prefer_family
  doc: "connect first to addresses of specified family,\none of IPv6, IPv4, or none"
  type: long
  inputBinding:
    prefix: --prefer-family
- id: in_user
  doc: set both ftp and http user to USER
  type: string
  inputBinding:
    prefix: --user
- id: in_password
  doc: set both ftp and http password to PASS
  type: string
  inputBinding:
    prefix: --password
- id: in_ask_password
  doc: prompt for passwords
  type: boolean
  inputBinding:
    prefix: --ask-password
- id: in_use_askpass
  doc: "specify credential handler for requesting\nusername and password.  If no COMMAND\
    \ is\nspecified the WGET_ASKPASS or the SSH_ASKPASS\nenvironment variable is used."
  type: string
  inputBinding:
    prefix: --use-askpass
- id: in_no_iri
  doc: turn off IRI support
  type: boolean
  inputBinding:
    prefix: --no-iri
- id: in_local_encoding
  doc: use ENC as the local encoding for IRIs
  type: string
  inputBinding:
    prefix: --local-encoding
- id: in_remote_encoding
  doc: use ENC as the default remote encoding
  type: string
  inputBinding:
    prefix: --remote-encoding
- id: in_unlink
  doc: remove file before clobber
  type: boolean
  inputBinding:
    prefix: --unlink
- id: in_xattr
  doc: turn on storage of metadata in extended file attributes
  type: boolean
  inputBinding:
    prefix: --xattr
- id: in_no_directories
  doc: don't create directories
  type: boolean
  inputBinding:
    prefix: --no-directories
- id: in__forcedirectories_force
  doc: ',  --force-directories         force creation of directories'
  type: boolean
  inputBinding:
    prefix: -x
- id: in_no_host_directories
  doc: don't create host directories
  type: boolean
  inputBinding:
    prefix: --no-host-directories
- id: in_protocol_directories
  doc: use protocol name in directories
  type: boolean
  inputBinding:
    prefix: --protocol-directories
- id: in__directoryprefixprefix_save
  doc: ',  --directory-prefix=PREFIX   save files to PREFIX/..'
  type: boolean
  inputBinding:
    prefix: -P
- id: in_cut_dirs
  doc: ignore NUMBER remote directory components
  type: long
  inputBinding:
    prefix: --cut-dirs
- id: in_http_user
  doc: set http user to USER
  type: string
  inputBinding:
    prefix: --http-user
- id: in_http_password
  doc: set http password to PASS
  type: string
  inputBinding:
    prefix: --http-password
- id: in_no_cache
  doc: disallow server-cached data
  type: boolean
  inputBinding:
    prefix: --no-cache
- id: in_default_page
  doc: "change the default page name (normally\nthis is 'index.html'.)"
  type: string
  inputBinding:
    prefix: --default-page
- id: in__adjustextension_save
  doc: ',  --adjust-extension          save HTML/CSS documents with proper extensions'
  type: boolean
  inputBinding:
    prefix: -E
- id: in_ignore_length
  doc: ignore 'Content-Length' header field
  type: boolean
  inputBinding:
    prefix: --ignore-length
- id: in_header
  doc: insert STRING among the headers
  type: string
  inputBinding:
    prefix: --header
- id: in_compression
  doc: 'choose compression, one of auto, gzip and none. (default: none)'
  type: string
  inputBinding:
    prefix: --compression
- id: in_max_redirect
  doc: maximum redirections allowed per page
  type: boolean
  inputBinding:
    prefix: --max-redirect
- id: in_proxy_user
  doc: set USER as proxy username
  type: string
  inputBinding:
    prefix: --proxy-user
- id: in_proxy_password
  doc: set PASS as proxy password
  type: string
  inputBinding:
    prefix: --proxy-password
- id: in_referer
  doc: "include 'Referer: URL' header in HTTP request"
  type: string
  inputBinding:
    prefix: --referer
- id: in_save_headers
  doc: save the HTTP headers to file
  type: boolean
  inputBinding:
    prefix: --save-headers
- id: in__useragentagent_identify
  doc: ',  --user-agent=AGENT          identify as AGENT instead of Wget/VERSION'
  type: boolean
  inputBinding:
    prefix: -U
- id: in_no_http_keep_alive
  doc: disable HTTP keep-alive (persistent connections)
  type: boolean
  inputBinding:
    prefix: --no-http-keep-alive
- id: in_no_cookies
  doc: don't use cookies
  type: boolean
  inputBinding:
    prefix: --no-cookies
- id: in_load_cookies
  doc: load cookies from FILE before session
  type: File
  inputBinding:
    prefix: --load-cookies
- id: in_save_cookies
  doc: save cookies to FILE after session
  type: File
  inputBinding:
    prefix: --save-cookies
- id: in_keep_session_cookies
  doc: load and save session (non-permanent) cookies
  type: boolean
  inputBinding:
    prefix: --keep-session-cookies
- id: in_post_data
  doc: use the POST method; send STRING as the data
  type: string
  inputBinding:
    prefix: --post-data
- id: in_post_file
  doc: use the POST method; send contents of FILE
  type: File
  inputBinding:
    prefix: --post-file
- id: in_method
  doc: use method "HTTPMethod" in the request
  type: string
  inputBinding:
    prefix: --method
- id: in_body_data
  doc: send STRING as data. --method MUST be set
  type: string
  inputBinding:
    prefix: --body-data
- id: in_body_file
  doc: send contents of FILE. --method MUST be set
  type: File
  inputBinding:
    prefix: --body-file
- id: in_content_disposition
  doc: "honor the Content-Disposition header when\nchoosing local file names (EXPERIMENTAL)"
  type: boolean
  inputBinding:
    prefix: --content-disposition
- id: in_content_on_error
  doc: output the received content on server errors
  type: boolean
  inputBinding:
    prefix: --content-on-error
- id: in_auth_no_challenge
  doc: "send Basic HTTP authentication information\nwithout first waiting for the\
    \ server's\nchallenge"
  type: boolean
  inputBinding:
    prefix: --auth-no-challenge
- id: in_secure_protocol
  doc: "choose secure protocol, one of auto, SSLv2,\nSSLv3, TLSv1, TLSv1_1, TLSv1_2\
    \ and PFS"
  type: long
  inputBinding:
    prefix: --secure-protocol
- id: in_https_only
  doc: only follow secure HTTPS links
  type: boolean
  inputBinding:
    prefix: --https-only
- id: in_no_check_certificate
  doc: don't validate the server's certificate
  type: boolean
  inputBinding:
    prefix: --no-check-certificate
- id: in_certificate
  doc: client certificate file
  type: File
  inputBinding:
    prefix: --certificate
- id: in_certificate_type
  doc: client certificate type, PEM or DER
  type: string
  inputBinding:
    prefix: --certificate-type
- id: in_private_key
  doc: private key file
  type: File
  inputBinding:
    prefix: --private-key
- id: in_private_key_type
  doc: private key type, PEM or DER
  type: string
  inputBinding:
    prefix: --private-key-type
- id: in_ca_certificate
  doc: file with the bundle of CAs
  type: File
  inputBinding:
    prefix: --ca-certificate
- id: in_ca_directory
  doc: directory where hash list of CAs is stored
  type: Directory
  inputBinding:
    prefix: --ca-directory
- id: in_crl_file
  doc: file with bundle of CRLs
  type: File
  inputBinding:
    prefix: --crl-file
- id: in_pinned_pubkey
  doc: "Public key (PEM/DER) file, or any number\nof base64 encoded sha256 hashes\
    \ preceded by\n'sha256//' and separated by ';', to verify\npeer against"
  type: File
  inputBinding:
    prefix: --pinnedpubkey
- id: in_random_file
  doc: file with random data for seeding the SSL PRNG
  type: File
  inputBinding:
    prefix: --random-file
- id: in_ciphers
  doc: "Set the priority string (GnuTLS) or cipher list string (OpenSSL) directly.\n\
    Use with care. This option overrides --secure-protocol.\nThe format and syntax\
    \ of this string depend on the specific SSL/TLS engine."
  type: string
  inputBinding:
    prefix: --ciphers
- id: in_no_h_sts
  doc: disable HSTS
  type: boolean
  inputBinding:
    prefix: --no-hsts
- id: in_h_sts_file
  doc: path of HSTS database (will override default)
  type: boolean
  inputBinding:
    prefix: --hsts-file
- id: in_ftp_user
  doc: set ftp user to USER
  type: string
  inputBinding:
    prefix: --ftp-user
- id: in_ftp_password
  doc: set ftp password to PASS
  type: string
  inputBinding:
    prefix: --ftp-password
- id: in_no_remove_listing
  doc: don't remove '.listing' files
  type: boolean
  inputBinding:
    prefix: --no-remove-listing
- id: in_no_glob
  doc: turn off FTP file name globbing
  type: boolean
  inputBinding:
    prefix: --no-glob
- id: in_no_passive_ftp
  doc: disable the "passive" transfer mode
  type: boolean
  inputBinding:
    prefix: --no-passive-ftp
- id: in_preserve_permissions
  doc: preserve remote file permissions
  type: boolean
  inputBinding:
    prefix: --preserve-permissions
- id: in_retr_symlinks
  doc: when recursing, get linked-to files (not dir)
  type: boolean
  inputBinding:
    prefix: --retr-symlinks
- id: in_ftps_implicit
  doc: use implicit FTPS (default port is 990)
  type: boolean
  inputBinding:
    prefix: --ftps-implicit
- id: in_ftps_resume_ssl
  doc: "resume the SSL/TLS session started in the control connection when\nopening\
    \ a data connection"
  type: boolean
  inputBinding:
    prefix: --ftps-resume-ssl
- id: in_ftps_clear_data_connection
  doc: cipher the control channel only; all the data will be in plaintext
  type: boolean
  inputBinding:
    prefix: --ftps-clear-data-connection
- id: in_ftps_fall_back_to_ftp
  doc: fall back to FTP if FTPS is not supported in the target server
  type: boolean
  inputBinding:
    prefix: --ftps-fallback-to-ftp
- id: in_war_c_file
  doc: save request/response data to a .warc.gz file
  type: File
  inputBinding:
    prefix: --warc-file
- id: in_war_c_header
  doc: insert STRING into the warcinfo record
  type: string
  inputBinding:
    prefix: --warc-header
- id: in_war_c_max_size
  doc: set maximum size of WARC files to NUMBER
  type: long
  inputBinding:
    prefix: --warc-max-size
- id: in_war_c_cdx
  doc: write CDX index files
  type: boolean
  inputBinding:
    prefix: --warc-cdx
- id: in_war_c_ded_up
  doc: do not store records listed in this CDX file
  type: File
  inputBinding:
    prefix: --warc-dedup
- id: in_no_war_c_compression
  doc: do not compress WARC files with GZIP
  type: boolean
  inputBinding:
    prefix: --no-warc-compression
- id: in_no_war_c_digests
  doc: do not calculate SHA1 digests
  type: boolean
  inputBinding:
    prefix: --no-warc-digests
- id: in_no_war_c_keep_log
  doc: do not store the log file in a WARC record
  type: boolean
  inputBinding:
    prefix: --no-warc-keep-log
- id: in_war_c_tempdir
  doc: "location for temporary files created by the\nWARC writer"
  type: Directory
  inputBinding:
    prefix: --warc-tempdir
- id: in__recursive_specify
  doc: ',  --recursive                 specify recursive download'
  type: boolean
  inputBinding:
    prefix: -r
- id: in__levelnumber_maximum
  doc: ',  --level=NUMBER              maximum recursion depth (inf or 0 for infinite)'
  type: boolean
  inputBinding:
    prefix: -l
- id: in_delete_after
  doc: delete files locally after downloading them
  type: boolean
  inputBinding:
    prefix: --delete-after
- id: in__convertlinks_make
  doc: ",  --convert-links             make links in downloaded HTML or CSS point\
    \ to\nlocal files"
  type: boolean
  inputBinding:
    prefix: -k
- id: in_convert_file_only
  doc: convert the file part of the URLs only (usually known as the basename)
  type: boolean
  inputBinding:
    prefix: --convert-file-only
- id: in_backups
  doc: before writing file X, rotate up to N backup files
  type: File
  inputBinding:
    prefix: --backups
- id: in__backupconverted_converting
  doc: ',  --backup-converted          before converting file X, back up as X.orig'
  type: boolean
  inputBinding:
    prefix: -K
- id: in__mirror_shortcut
  doc: ',  --mirror                    shortcut for -N -r -l inf --no-remove-listing'
  type: boolean
  inputBinding:
    prefix: -m
- id: in__pagerequisites_get
  doc: ',  --page-requisites           get all images, etc. needed to display HTML
    page'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_strict_comments
  doc: turn on strict (SGML) handling of HTML comments
  type: boolean
  inputBinding:
    prefix: --strict-comments
- id: in__acceptlist_commaseparated
  doc: ',  --accept=LIST               comma-separated list of accepted extensions'
  type: boolean
  inputBinding:
    prefix: -A
- id: in__rejectlist_commaseparated
  doc: ',  --reject=LIST               comma-separated list of rejected extensions'
  type: boolean
  inputBinding:
    prefix: -R
- id: in_accept_regex
  doc: regex matching accepted URLs
  type: string
  inputBinding:
    prefix: --accept-regex
- id: in_reject_regex
  doc: regex matching rejected URLs
  type: string
  inputBinding:
    prefix: --reject-regex
- id: in_regex_type
  doc: regex type (posix)
  type: string
  inputBinding:
    prefix: --regex-type
- id: in__domainslist_commaseparated
  doc: ',  --domains=LIST              comma-separated list of accepted domains'
  type: boolean
  inputBinding:
    prefix: -D
- id: in_exclude_domains
  doc: comma-separated list of rejected domains
  type: string
  inputBinding:
    prefix: --exclude-domains
- id: in_follow_ftp
  doc: follow FTP links from HTML documents
  type: boolean
  inputBinding:
    prefix: --follow-ftp
- id: in_follow_tags
  doc: comma-separated list of followed HTML tags
  type: string
  inputBinding:
    prefix: --follow-tags
- id: in_ignore_tags
  doc: comma-separated list of ignored HTML tags
  type: string
  inputBinding:
    prefix: --ignore-tags
- id: in__spanhosts_go
  doc: ',  --span-hosts                go to foreign hosts when recursive'
  type: boolean
  inputBinding:
    prefix: -H
- id: in__relative_follow
  doc: ',  --relative                  follow relative links only'
  type: boolean
  inputBinding:
    prefix: -L
- id: in__includedirectorieslist_list
  doc: ',  --include-directories=LIST  list of allowed directories'
  type: boolean
  inputBinding:
    prefix: -I
- id: in_trust_server_names
  doc: "use the name specified by the redirection\nURL's last component"
  type: boolean
  inputBinding:
    prefix: --trust-server-names
- id: in__excludedirectorieslist_list
  doc: ',  --exclude-directories=LIST  list of excluded directories'
  type: boolean
  inputBinding:
    prefix: -X
- id: in_no_parent
  doc: don't ascend to the parent directory
  type: boolean
  inputBinding:
    prefix: --no-parent
- id: in_local
  doc: --no-if-modified-since      don't use conditional if-modified-since get
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__outputfilefile_log
  doc: ',  --output-file=FILE          log messages to FILE'
  type: File
  outputBinding:
    glob: $(inputs.in__outputfilefile_log)
- id: out__appendoutputfile_append
  doc: ',  --append-output=FILE        append messages to FILE'
  type: File
  outputBinding:
    glob: $(inputs.in__appendoutputfile_append)
- id: out__outputdocumentfile_write
  doc: ',  --output-document=FILE      write documents to FILE'
  type: File
  outputBinding:
    glob: $(inputs.in__outputdocumentfile_write)
cwlVersion: v1.1
baseCommand:
- wget
