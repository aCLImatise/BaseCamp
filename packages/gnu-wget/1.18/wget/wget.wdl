version 1.0

task Wget {
  input {
    Boolean? _version_display
    Boolean? _background_go
    Boolean? _executecommand_execute
    File? _outputfilefile_log
    File? _appendoutputfile_append
    Boolean? _debug_print
    Boolean? _quiet_quiet
    Boolean? _verbose_verbose
    Boolean? no_verbose
    String? report_speed
    Boolean? _inputfilefile_download
    Boolean? _forcehtml_treat
    Boolean? _baseurl_resolves
    File? config
    Boolean? no_config
    File? rejected_log
    Boolean? _triesnumber_set
    Boolean? retry_conn_refused
    File? _outputdocumentfile_write
    Boolean? no_clobber
    Boolean? _continue_resume
    String? start_pos
    String? progress
    Boolean? show_progress
    Boolean? _timestamping_reretrieve
    Boolean? no_use_server_timestamps
    Boolean? _serverresponse_print
    Boolean? spider
    Boolean? _timeoutseconds_set
    String? dns_timeout
    String? connect_timeout
    String? read_timeout
    Boolean? _waitseconds_wait
    Int? wait_retry
    Boolean? random_wait
    Boolean? no_proxy
    Boolean? _quotanumber_set
    String? bind_address
    String? limit_rate
    Boolean? no_dns_cache
    File? restrict_file_names
    Boolean? ignore_case
    Boolean? four
    Boolean? six
    Int? prefer_family
    String? user
    String? password
    Boolean? ask_password
    Boolean? no_iri
    String? local_encoding
    String? remote_encoding
    Boolean? unlink
    Boolean? no_directories
    Boolean? _forcedirectories_force
    Boolean? no_host_directories
    Boolean? protocol_directories
    Boolean? _directoryprefixprefix_save
    Int? cut_dirs
    String? http_user
    String? http_password
    Boolean? no_cache
    String? default_page
    Boolean? _adjustextension_save
    Boolean? ignore_length
    String? header
    Boolean? max_redirect
    String? proxy_user
    String? proxy_password
    String? referer
    Boolean? save_headers
    Boolean? _useragentagent_identify
    Boolean? no_http_keep_alive
    Boolean? no_cookies
    File? load_cookies
    File? save_cookies
    Boolean? keep_session_cookies
    String? post_data
    File? post_file
    String? method
    String? body_data
    File? body_file
    Boolean? content_disposition
    Boolean? content_on_error
    Boolean? auth_no_challenge
    Int? secure_protocol
    Boolean? https_only
    Boolean? no_check_certificate
    File? certificate
    String? certificate_type
    File? private_key
    String? private_key_type
    File? ca_certificate
    Directory? ca_directory
    File? crl_file
    File? pinned_pubkey
    File? random_file
    File? egd_file
    Boolean? no_h_sts
    Boolean? h_sts_file
    String? ftp_user
    String? ftp_password
    Boolean? no_remove_listing
    Boolean? no_glob
    Boolean? no_passive_ftp
    Boolean? preserve_permissions
    Boolean? retr_symlinks
    Boolean? ftps_implicit
    Boolean? ftps_resume_ssl
    Boolean? ftps_clear_data_connection
    Boolean? ftps_fall_back_to_ftp
    File? war_c_file
    String? war_c_header
    Int? war_c_max_size
    Boolean? war_c_cdx
    File? war_c_ded_up
    Boolean? no_war_c_compression
    Boolean? no_war_c_digests
    Boolean? no_war_c_keep_log
    Directory? war_c_tempdir
    Boolean? _recursive_specify
    Boolean? _levelnumber_maximum
    Boolean? delete_after
    Boolean? _convertlinks_make
    Boolean? convert_file_only
    File? backups
    Boolean? _backupconverted_converting
    Boolean? _mirror_shortcut
    Boolean? _pagerequisites_get
    Boolean? strict_comments
    Boolean? _acceptlist_commaseparated
    Boolean? _rejectlist_commaseparated
    String? accept_regex
    String? reject_regex
    String? regex_type
    Boolean? _domainslist_commaseparated
    String? exclude_domains
    Boolean? follow_ftp
    String? follow_tags
    String? ignore_tags
    Boolean? _spanhosts_go
    Boolean? _relative_follow
    Boolean? _includedirectorieslist_list
    Boolean? trust_server_names
    Boolean? _excludedirectorieslist_list
    Boolean? no_parent
    String local
  }
  command <<<
    wget \
      ~{local} \
      ~{if (_version_display) then "-V" else ""} \
      ~{if (_background_go) then "-b" else ""} \
      ~{if (_executecommand_execute) then "-e" else ""} \
      ~{if (_outputfilefile_log) then "-o" else ""} \
      ~{if (_appendoutputfile_append) then "-a" else ""} \
      ~{if (_debug_print) then "-d" else ""} \
      ~{if (_quiet_quiet) then "-q" else ""} \
      ~{if (_verbose_verbose) then "-v" else ""} \
      ~{if (no_verbose) then "--no-verbose" else ""} \
      ~{if defined(report_speed) then ("--report-speed " +  '"' + report_speed + '"') else ""} \
      ~{if (_inputfilefile_download) then "-i" else ""} \
      ~{if (_forcehtml_treat) then "-F" else ""} \
      ~{if (_baseurl_resolves) then "-B" else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if (no_config) then "--no-config" else ""} \
      ~{if defined(rejected_log) then ("--rejected-log " +  '"' + rejected_log + '"') else ""} \
      ~{if (_triesnumber_set) then "-t" else ""} \
      ~{if (retry_conn_refused) then "--retry-connrefused" else ""} \
      ~{if (_outputdocumentfile_write) then "-O" else ""} \
      ~{if (no_clobber) then "--no-clobber" else ""} \
      ~{if (_continue_resume) then "-c" else ""} \
      ~{if defined(start_pos) then ("--start-pos " +  '"' + start_pos + '"') else ""} \
      ~{if defined(progress) then ("--progress " +  '"' + progress + '"') else ""} \
      ~{if (show_progress) then "--show-progress" else ""} \
      ~{if (_timestamping_reretrieve) then "-N" else ""} \
      ~{if (no_use_server_timestamps) then "--no-use-server-timestamps" else ""} \
      ~{if (_serverresponse_print) then "-S" else ""} \
      ~{if (spider) then "--spider" else ""} \
      ~{if (_timeoutseconds_set) then "-T" else ""} \
      ~{if defined(dns_timeout) then ("--dns-timeout " +  '"' + dns_timeout + '"') else ""} \
      ~{if defined(connect_timeout) then ("--connect-timeout " +  '"' + connect_timeout + '"') else ""} \
      ~{if defined(read_timeout) then ("--read-timeout " +  '"' + read_timeout + '"') else ""} \
      ~{if (_waitseconds_wait) then "-w" else ""} \
      ~{if defined(wait_retry) then ("--waitretry " +  '"' + wait_retry + '"') else ""} \
      ~{if (random_wait) then "--random-wait" else ""} \
      ~{if (no_proxy) then "--no-proxy" else ""} \
      ~{if (_quotanumber_set) then "-Q" else ""} \
      ~{if defined(bind_address) then ("--bind-address " +  '"' + bind_address + '"') else ""} \
      ~{if defined(limit_rate) then ("--limit-rate " +  '"' + limit_rate + '"') else ""} \
      ~{if (no_dns_cache) then "--no-dns-cache" else ""} \
      ~{if defined(restrict_file_names) then ("--restrict-file-names " +  '"' + restrict_file_names + '"') else ""} \
      ~{if (ignore_case) then "--ignore-case" else ""} \
      ~{if (four) then "-4" else ""} \
      ~{if (six) then "-6" else ""} \
      ~{if defined(prefer_family) then ("--prefer-family " +  '"' + prefer_family + '"') else ""} \
      ~{if defined(user) then ("--user " +  '"' + user + '"') else ""} \
      ~{if defined(password) then ("--password " +  '"' + password + '"') else ""} \
      ~{if (ask_password) then "--ask-password" else ""} \
      ~{if (no_iri) then "--no-iri" else ""} \
      ~{if defined(local_encoding) then ("--local-encoding " +  '"' + local_encoding + '"') else ""} \
      ~{if defined(remote_encoding) then ("--remote-encoding " +  '"' + remote_encoding + '"') else ""} \
      ~{if (unlink) then "--unlink" else ""} \
      ~{if (no_directories) then "--no-directories" else ""} \
      ~{if (_forcedirectories_force) then "-x" else ""} \
      ~{if (no_host_directories) then "--no-host-directories" else ""} \
      ~{if (protocol_directories) then "--protocol-directories" else ""} \
      ~{if (_directoryprefixprefix_save) then "-P" else ""} \
      ~{if defined(cut_dirs) then ("--cut-dirs " +  '"' + cut_dirs + '"') else ""} \
      ~{if defined(http_user) then ("--http-user " +  '"' + http_user + '"') else ""} \
      ~{if defined(http_password) then ("--http-password " +  '"' + http_password + '"') else ""} \
      ~{if (no_cache) then "--no-cache" else ""} \
      ~{if defined(default_page) then ("--default-page " +  '"' + default_page + '"') else ""} \
      ~{if (_adjustextension_save) then "-E" else ""} \
      ~{if (ignore_length) then "--ignore-length" else ""} \
      ~{if defined(header) then ("--header " +  '"' + header + '"') else ""} \
      ~{if (max_redirect) then "--max-redirect" else ""} \
      ~{if defined(proxy_user) then ("--proxy-user " +  '"' + proxy_user + '"') else ""} \
      ~{if defined(proxy_password) then ("--proxy-password " +  '"' + proxy_password + '"') else ""} \
      ~{if defined(referer) then ("--referer " +  '"' + referer + '"') else ""} \
      ~{if (save_headers) then "--save-headers" else ""} \
      ~{if (_useragentagent_identify) then "-U" else ""} \
      ~{if (no_http_keep_alive) then "--no-http-keep-alive" else ""} \
      ~{if (no_cookies) then "--no-cookies" else ""} \
      ~{if defined(load_cookies) then ("--load-cookies " +  '"' + load_cookies + '"') else ""} \
      ~{if defined(save_cookies) then ("--save-cookies " +  '"' + save_cookies + '"') else ""} \
      ~{if (keep_session_cookies) then "--keep-session-cookies" else ""} \
      ~{if defined(post_data) then ("--post-data " +  '"' + post_data + '"') else ""} \
      ~{if defined(post_file) then ("--post-file " +  '"' + post_file + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(body_data) then ("--body-data " +  '"' + body_data + '"') else ""} \
      ~{if defined(body_file) then ("--body-file " +  '"' + body_file + '"') else ""} \
      ~{if (content_disposition) then "--content-disposition" else ""} \
      ~{if (content_on_error) then "--content-on-error" else ""} \
      ~{if (auth_no_challenge) then "--auth-no-challenge" else ""} \
      ~{if defined(secure_protocol) then ("--secure-protocol " +  '"' + secure_protocol + '"') else ""} \
      ~{if (https_only) then "--https-only" else ""} \
      ~{if (no_check_certificate) then "--no-check-certificate" else ""} \
      ~{if defined(certificate) then ("--certificate " +  '"' + certificate + '"') else ""} \
      ~{if defined(certificate_type) then ("--certificate-type " +  '"' + certificate_type + '"') else ""} \
      ~{if defined(private_key) then ("--private-key " +  '"' + private_key + '"') else ""} \
      ~{if defined(private_key_type) then ("--private-key-type " +  '"' + private_key_type + '"') else ""} \
      ~{if defined(ca_certificate) then ("--ca-certificate " +  '"' + ca_certificate + '"') else ""} \
      ~{if defined(ca_directory) then ("--ca-directory " +  '"' + ca_directory + '"') else ""} \
      ~{if defined(crl_file) then ("--crl-file " +  '"' + crl_file + '"') else ""} \
      ~{if defined(pinned_pubkey) then ("--pinnedpubkey " +  '"' + pinned_pubkey + '"') else ""} \
      ~{if defined(random_file) then ("--random-file " +  '"' + random_file + '"') else ""} \
      ~{if defined(egd_file) then ("--egd-file " +  '"' + egd_file + '"') else ""} \
      ~{if (no_h_sts) then "--no-hsts" else ""} \
      ~{if (h_sts_file) then "--hsts-file" else ""} \
      ~{if defined(ftp_user) then ("--ftp-user " +  '"' + ftp_user + '"') else ""} \
      ~{if defined(ftp_password) then ("--ftp-password " +  '"' + ftp_password + '"') else ""} \
      ~{if (no_remove_listing) then "--no-remove-listing" else ""} \
      ~{if (no_glob) then "--no-glob" else ""} \
      ~{if (no_passive_ftp) then "--no-passive-ftp" else ""} \
      ~{if (preserve_permissions) then "--preserve-permissions" else ""} \
      ~{if (retr_symlinks) then "--retr-symlinks" else ""} \
      ~{if (ftps_implicit) then "--ftps-implicit" else ""} \
      ~{if (ftps_resume_ssl) then "--ftps-resume-ssl" else ""} \
      ~{if (ftps_clear_data_connection) then "--ftps-clear-data-connection" else ""} \
      ~{if (ftps_fall_back_to_ftp) then "--ftps-fallback-to-ftp" else ""} \
      ~{if defined(war_c_file) then ("--warc-file " +  '"' + war_c_file + '"') else ""} \
      ~{if defined(war_c_header) then ("--warc-header " +  '"' + war_c_header + '"') else ""} \
      ~{if defined(war_c_max_size) then ("--warc-max-size " +  '"' + war_c_max_size + '"') else ""} \
      ~{if (war_c_cdx) then "--warc-cdx" else ""} \
      ~{if defined(war_c_ded_up) then ("--warc-dedup " +  '"' + war_c_ded_up + '"') else ""} \
      ~{if (no_war_c_compression) then "--no-warc-compression" else ""} \
      ~{if (no_war_c_digests) then "--no-warc-digests" else ""} \
      ~{if (no_war_c_keep_log) then "--no-warc-keep-log" else ""} \
      ~{if defined(war_c_tempdir) then ("--warc-tempdir " +  '"' + war_c_tempdir + '"') else ""} \
      ~{if (_recursive_specify) then "-r" else ""} \
      ~{if (_levelnumber_maximum) then "-l" else ""} \
      ~{if (delete_after) then "--delete-after" else ""} \
      ~{if (_convertlinks_make) then "-k" else ""} \
      ~{if (convert_file_only) then "--convert-file-only" else ""} \
      ~{if defined(backups) then ("--backups " +  '"' + backups + '"') else ""} \
      ~{if (_backupconverted_converting) then "-K" else ""} \
      ~{if (_mirror_shortcut) then "-m" else ""} \
      ~{if (_pagerequisites_get) then "-p" else ""} \
      ~{if (strict_comments) then "--strict-comments" else ""} \
      ~{if (_acceptlist_commaseparated) then "-A" else ""} \
      ~{if (_rejectlist_commaseparated) then "-R" else ""} \
      ~{if defined(accept_regex) then ("--accept-regex " +  '"' + accept_regex + '"') else ""} \
      ~{if defined(reject_regex) then ("--reject-regex " +  '"' + reject_regex + '"') else ""} \
      ~{if defined(regex_type) then ("--regex-type " +  '"' + regex_type + '"') else ""} \
      ~{if (_domainslist_commaseparated) then "-D" else ""} \
      ~{if defined(exclude_domains) then ("--exclude-domains " +  '"' + exclude_domains + '"') else ""} \
      ~{if (follow_ftp) then "--follow-ftp" else ""} \
      ~{if defined(follow_tags) then ("--follow-tags " +  '"' + follow_tags + '"') else ""} \
      ~{if defined(ignore_tags) then ("--ignore-tags " +  '"' + ignore_tags + '"') else ""} \
      ~{if (_spanhosts_go) then "-H" else ""} \
      ~{if (_relative_follow) then "-L" else ""} \
      ~{if (_includedirectorieslist_list) then "-I" else ""} \
      ~{if (trust_server_names) then "--trust-server-names" else ""} \
      ~{if (_excludedirectorieslist_list) then "-X" else ""} \
      ~{if (no_parent) then "--no-parent" else ""}
  >>>
  parameter_meta {
    _version_display: ",  --version                   display the version of Wget and exit"
    _background_go: ",  --background                go to background after startup"
    _executecommand_execute: ",  --execute=COMMAND           execute a `.wgetrc'-style command"
    _outputfilefile_log: ",  --output-file=FILE          log messages to FILE"
    _appendoutputfile_append: ",  --append-output=FILE        append messages to FILE"
    _debug_print: ",  --debug                     print lots of debugging information"
    _quiet_quiet: ",  --quiet                     quiet (no output)"
    _verbose_verbose: ",  --verbose                   be verbose (this is the default)"
    no_verbose: "turn off verboseness, without being quiet"
    report_speed: "output bandwidth as TYPE.  TYPE can be bits"
    _inputfilefile_download: ",  --input-file=FILE           download URLs found in local or external FILE"
    _forcehtml_treat: ",  --force-html                treat input file as HTML"
    _baseurl_resolves: ",  --base=URL                  resolves HTML input-file links (-i -F)\\nrelative to URL"
    config: "specify config file to use"
    no_config: "do not read any config file"
    rejected_log: "log reasons for URL rejection to FILE"
    _triesnumber_set: ",  --tries=NUMBER              set number of retries to NUMBER (0 unlimits)"
    retry_conn_refused: "retry even if connection is refused"
    _outputdocumentfile_write: ",  --output-document=FILE      write documents to FILE"
    no_clobber: "skip downloads that would download to\\nexisting files (overwriting them)"
    _continue_resume: ",  --continue                  resume getting a partially-downloaded file"
    start_pos: "start downloading from zero-based position OFFSET"
    progress: "select progress gauge type"
    show_progress: "display the progress bar in any verbosity mode"
    _timestamping_reretrieve: ",  --timestamping              don't re-retrieve files unless newer than"
    no_use_server_timestamps: "don't set the local file's timestamp by\\nthe one on the server"
    _serverresponse_print: ",  --server-response           print server response"
    spider: "don't download anything"
    _timeoutseconds_set: ",  --timeout=SECONDS           set all timeout values to SECONDS"
    dns_timeout: "set the DNS lookup timeout to SECS"
    connect_timeout: "set the connect timeout to SECS"
    read_timeout: "set the read timeout to SECS"
    _waitseconds_wait: ",  --wait=SECONDS              wait SECONDS between retrievals"
    wait_retry: "wait 1..SECONDS between retries of a retrieval"
    random_wait: "wait from 0.5*WAIT...1.5*WAIT secs between retrievals"
    no_proxy: "explicitly turn off proxy"
    _quotanumber_set: ",  --quota=NUMBER              set retrieval quota to NUMBER"
    bind_address: "bind to ADDRESS (hostname or IP) on local host"
    limit_rate: "limit download rate to RATE"
    no_dns_cache: "disable caching DNS lookups"
    restrict_file_names: "restrict chars in file names to ones OS allows"
    ignore_case: "ignore case when matching files/directories"
    four: ",  --inet4-only                connect only to IPv4 addresses"
    six: ",  --inet6-only                connect only to IPv6 addresses"
    prefer_family: "connect first to addresses of specified family,\\none of IPv6, IPv4, or none"
    user: "set both ftp and http user to USER"
    password: "set both ftp and http password to PASS"
    ask_password: "prompt for passwords"
    no_iri: "turn off IRI support"
    local_encoding: "use ENC as the local encoding for IRIs"
    remote_encoding: "use ENC as the default remote encoding"
    unlink: "remove file before clobber"
    no_directories: "don't create directories"
    _forcedirectories_force: ",  --force-directories         force creation of directories"
    no_host_directories: "don't create host directories"
    protocol_directories: "use protocol name in directories"
    _directoryprefixprefix_save: ",  --directory-prefix=PREFIX   save files to PREFIX/.."
    cut_dirs: "ignore NUMBER remote directory components"
    http_user: "set http user to USER"
    http_password: "set http password to PASS"
    no_cache: "disallow server-cached data"
    default_page: "change the default page name (normally\\nthis is 'index.html'.)"
    _adjustextension_save: ",  --adjust-extension          save HTML/CSS documents with proper extensions"
    ignore_length: "ignore 'Content-Length' header field"
    header: "insert STRING among the headers"
    max_redirect: "maximum redirections allowed per page"
    proxy_user: "set USER as proxy username"
    proxy_password: "set PASS as proxy password"
    referer: "include 'Referer: URL' header in HTTP request"
    save_headers: "save the HTTP headers to file"
    _useragentagent_identify: ",  --user-agent=AGENT          identify as AGENT instead of Wget/VERSION"
    no_http_keep_alive: "disable HTTP keep-alive (persistent connections)"
    no_cookies: "don't use cookies"
    load_cookies: "load cookies from FILE before session"
    save_cookies: "save cookies to FILE after session"
    keep_session_cookies: "load and save session (non-permanent) cookies"
    post_data: "use the POST method; send STRING as the data"
    post_file: "use the POST method; send contents of FILE"
    method: "use method \\\"HTTPMethod\\\" in the request"
    body_data: "send STRING as data. --method MUST be set"
    body_file: "send contents of FILE. --method MUST be set"
    content_disposition: "honor the Content-Disposition header when\\nchoosing local file names (EXPERIMENTAL)"
    content_on_error: "output the received content on server errors"
    auth_no_challenge: "send Basic HTTP authentication information\\nwithout first waiting for the server's\\nchallenge"
    secure_protocol: "choose secure protocol, one of auto, SSLv2,\\nSSLv3, TLSv1 and PFS"
    https_only: "only follow secure HTTPS links"
    no_check_certificate: "don't validate the server's certificate"
    certificate: "client certificate file"
    certificate_type: "client certificate type, PEM or DER"
    private_key: "private key file"
    private_key_type: "private key type, PEM or DER"
    ca_certificate: "file with the bundle of CAs"
    ca_directory: "directory where hash list of CAs is stored"
    crl_file: "file with bundle of CRLs"
    pinned_pubkey: "Public key (PEM/DER) file, or any number\\nof base64 encoded sha256 hashes preceded by\\n'sha256//' and seperated by ';', to verify\\npeer against"
    random_file: "file with random data for seeding the SSL PRNG"
    egd_file: "file naming the EGD socket with random data"
    no_h_sts: "disable HSTS"
    h_sts_file: "path of HSTS database (will override default)"
    ftp_user: "set ftp user to USER"
    ftp_password: "set ftp password to PASS"
    no_remove_listing: "don't remove '.listing' files"
    no_glob: "turn off FTP file name globbing"
    no_passive_ftp: "disable the \\\"passive\\\" transfer mode"
    preserve_permissions: "preserve remote file permissions"
    retr_symlinks: "when recursing, get linked-to files (not dir)"
    ftps_implicit: "use implicit FTPS (default port is 990)"
    ftps_resume_ssl: "resume the SSL/TLS session started in the control connection when\\nopening a data connection"
    ftps_clear_data_connection: "cipher the control channel only; all the data will be in plaintext"
    ftps_fall_back_to_ftp: "fall back to FTP if FTPS is not supported in the target server"
    war_c_file: "save request/response data to a .warc.gz file"
    war_c_header: "insert STRING into the warcinfo record"
    war_c_max_size: "set maximum size of WARC files to NUMBER"
    war_c_cdx: "write CDX index files"
    war_c_ded_up: "do not store records listed in this CDX file"
    no_war_c_compression: "do not compress WARC files with GZIP"
    no_war_c_digests: "do not calculate SHA1 digests"
    no_war_c_keep_log: "do not store the log file in a WARC record"
    war_c_tempdir: "location for temporary files created by the\\nWARC writer"
    _recursive_specify: ",  --recursive                 specify recursive download"
    _levelnumber_maximum: ",  --level=NUMBER              maximum recursion depth (inf or 0 for infinite)"
    delete_after: "delete files locally after downloading them"
    _convertlinks_make: ",  --convert-links             make links in downloaded HTML or CSS point to\\nlocal files"
    convert_file_only: "convert the file part of the URLs only (usually known as the basename)"
    backups: "before writing file X, rotate up to N backup files"
    _backupconverted_converting: ",  --backup-converted          before converting file X, back up as X.orig"
    _mirror_shortcut: ",  --mirror                    shortcut for -N -r -l inf --no-remove-listing"
    _pagerequisites_get: ",  --page-requisites           get all images, etc. needed to display HTML page"
    strict_comments: "turn on strict (SGML) handling of HTML comments"
    _acceptlist_commaseparated: ",  --accept=LIST               comma-separated list of accepted extensions"
    _rejectlist_commaseparated: ",  --reject=LIST               comma-separated list of rejected extensions"
    accept_regex: "regex matching accepted URLs"
    reject_regex: "regex matching rejected URLs"
    regex_type: "regex type (posix)"
    _domainslist_commaseparated: ",  --domains=LIST              comma-separated list of accepted domains"
    exclude_domains: "comma-separated list of rejected domains"
    follow_ftp: "follow FTP links from HTML documents"
    follow_tags: "comma-separated list of followed HTML tags"
    ignore_tags: "comma-separated list of ignored HTML tags"
    _spanhosts_go: ",  --span-hosts                go to foreign hosts when recursive"
    _relative_follow: ",  --relative                  follow relative links only"
    _includedirectorieslist_list: ",  --include-directories=LIST  list of allowed directories"
    trust_server_names: "use the name specified by the redirection\\nURL's last component"
    _excludedirectorieslist_list: ",  --exclude-directories=LIST  list of excluded directories"
    no_parent: "don't ascend to the parent directory"
    local: "--no-if-modified-since      don't use conditional if-modified-since get"
  }
  output {
    File out_stdout = stdout()
    File out__outputfilefile_log = "${in__outputfilefile_log}"
    File out__appendoutputfile_append = "${in__appendoutputfile_append}"
    File out__outputdocumentfile_write = "${in__outputdocumentfile_write}"
  }
}