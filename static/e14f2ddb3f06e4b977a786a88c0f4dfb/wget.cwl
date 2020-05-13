class: CommandLineTool
id: wget.cwl
inputs:
- id: v
  doc: ',  --version                   display the version of Wget and exit'
  type: boolean
  inputBinding:
    prefix: -V
- id: b
  doc: ',  --background                go to background after startup'
  type: boolean
  inputBinding:
    prefix: -b
- id: e
  doc: ",  --execute=COMMAND           execute a `.wgetrc'-style command"
  type: boolean
  inputBinding:
    prefix: -e
- id: o
  doc: ',  --output-file=FILE          log messages to FILE'
  type: boolean
  inputBinding:
    prefix: -o
- id: a
  doc: ',  --append-output=FILE        append messages to FILE'
  type: boolean
  inputBinding:
    prefix: -a
- id: d
  doc: ',  --debug                     print lots of debugging information'
  type: boolean
  inputBinding:
    prefix: -d
- id: q
  doc: ',  --quiet                     quiet (no output)'
  type: boolean
  inputBinding:
    prefix: -q
- id: v
  doc: ',  --verbose                   be verbose (this is the default)'
  type: boolean
  inputBinding:
    prefix: -v
- id: no_verbose
  doc: turn off verboseness, without being quiet
  type: boolean
  inputBinding:
    prefix: --no-verbose
- id: report_speed
  doc: output bandwidth as TYPE.  TYPE can be bits
  type: string
  inputBinding:
    prefix: --report-speed
- id: i
  doc: ',  --input-file=FILE           download URLs found in local or external FILE'
  type: boolean
  inputBinding:
    prefix: -i
- id: f
  doc: ',  --force-html                treat input file as HTML'
  type: boolean
  inputBinding:
    prefix: -F
- id: b
  doc: ',  --base=URL                  resolves HTML input-file links (-i -F) relative
    to URL --config=FILE               specify config file to use --no-config                 do
    not read any config file --rejected-log=FILE         log reasons for URL rejection
    to FILE'
  type: boolean
  inputBinding:
    prefix: -B
- id: bind_address
  doc: bind to ADDRESS (hostname or IP) on local host
  type: string
  inputBinding:
    prefix: --bind-address
- id: limit_rate
  doc: limit download rate to RATE
  type: string
  inputBinding:
    prefix: --limit-rate
- id: no_dns_cache
  doc: disable caching DNS lookups
  type: boolean
  inputBinding:
    prefix: --no-dns-cache
- id: restrict_file_names
  doc: restrict chars in file names to ones OS allows
  type: string
  inputBinding:
    prefix: --restrict-file-names
- id: ignore_case
  doc: ignore case when matching files/directories
  type: boolean
  inputBinding:
    prefix: --ignore-case
- id: prefer_family
  doc: connect first to addresses of specified family, one of IPv6, IPv4, or none
  type: string
  inputBinding:
    prefix: --prefer-family
- id: user
  doc: set both ftp and http user to USER
  type: string
  inputBinding:
    prefix: --user
- id: password
  doc: set both ftp and http password to PASS
  type: string
  inputBinding:
    prefix: --password
- id: ask_password
  doc: prompt for passwords
  type: boolean
  inputBinding:
    prefix: --ask-password
- id: no_iri
  doc: turn off IRI support
  type: boolean
  inputBinding:
    prefix: --no-iri
- id: local_encoding
  doc: use ENC as the local encoding for IRIs
  type: string
  inputBinding:
    prefix: --local-encoding
- id: remote_encoding
  doc: use ENC as the default remote encoding
  type: string
  inputBinding:
    prefix: --remote-encoding
- id: unlink
  doc: remove file before clobber
  type: boolean
  inputBinding:
    prefix: --unlink
- id: no_directories
  doc: don't create directories
  type: boolean
  inputBinding:
    prefix: --no-directories
- id: x
  doc: ',  --force-directories         force creation of directories'
  type: boolean
  inputBinding:
    prefix: -x
- id: no_host_directories
  doc: don't create host directories
  type: boolean
  inputBinding:
    prefix: --no-host-directories
- id: protocol_directories
  doc: use protocol name in directories
  type: boolean
  inputBinding:
    prefix: --protocol-directories
- id: p
  doc: ',  --directory-prefix=PREFIX   save files to PREFIX/.. --cut-dirs=NUMBER           ignore
    NUMBER remote directory components'
  type: boolean
  inputBinding:
    prefix: -P
- id: e
  doc: ",  --adjust-extension          save HTML/CSS documents with proper extensions\
    \ --ignore-length             ignore 'Content-Length' header field --header=STRING\
    \             insert STRING among the headers --max-redirect              maximum\
    \ redirections allowed per page --proxy-user=USER           set USER as proxy\
    \ username --proxy-password=PASS       set PASS as proxy password --referer=URL\
    \               include 'Referer: URL' header in HTTP request --save-headers \
    \             save the HTTP headers to file"
  type: boolean
  inputBinding:
    prefix: -E
- id: u
  doc: ",  --user-agent=AGENT          identify as AGENT instead of Wget/VERSION --no-http-keep-alive\
    \        disable HTTP keep-alive (persistent connections) --no-cookies       \
    \         don't use cookies --load-cookies=FILE         load cookies from FILE\
    \ before session --save-cookies=FILE         save cookies to FILE after session\
    \ --keep-session-cookies      load and save session (non-permanent) cookies --post-data=STRING\
    \          use the POST method; send STRING as the data --post-file=FILE     \
    \       use the POST method; send contents of FILE --method=HTTPMethod       \
    \  use method \"HTTPMethod\" in the request --body-data=STRING          send STRING\
    \ as data. --method MUST be set --body-file=FILE            send contents of FILE.\
    \ --method MUST be set --content-disposition       honor the Content-Disposition\
    \ header when choosing local file names (EXPERIMENTAL) --content-on-error    \
    \      output the received content on server errors --auth-no-challenge      \
    \   send Basic HTTP authentication information without first waiting for the server's\
    \ challenge"
  type: boolean
  inputBinding:
    prefix: -U
- id: secure_protocol
  doc: choose secure protocol, one of auto, SSLv2, SSLv3, TLSv1 and PFS
  type: string
  inputBinding:
    prefix: --secure-protocol
- id: https_only
  doc: only follow secure HTTPS links
  type: boolean
  inputBinding:
    prefix: --https-only
- id: no_check_certificate
  doc: don't validate the server's certificate
  type: boolean
  inputBinding:
    prefix: --no-check-certificate
- id: certificate
  doc: client certificate file
  type: File
  inputBinding:
    prefix: --certificate
- id: certificate_type
  doc: client certificate type, PEM or DER
  type: string
  inputBinding:
    prefix: --certificate-type
- id: private_key
  doc: private key file
  type: File
  inputBinding:
    prefix: --private-key
- id: private_key_type
  doc: private key type, PEM or DER
  type: string
  inputBinding:
    prefix: --private-key-type
- id: ca_certificate
  doc: file with the bundle of CAs
  type: File
  inputBinding:
    prefix: --ca-certificate
- id: ca_directory
  doc: directory where hash list of CAs is stored
  type: string
  inputBinding:
    prefix: --ca-directory
- id: crl_file
  doc: file with bundle of CRLs
  type: File
  inputBinding:
    prefix: --crl-file
- id: pinned_pubkey
  doc: /HASHES  Public key (PEM/DER) file, or any number of base64 encoded sha256
    hashes preceded by 'sha256//' and seperated by ';', to verify peer against
  type: File
  inputBinding:
    prefix: --pinnedpubkey
- id: random_file
  doc: file with random data for seeding the SSL PRNG
  type: File
  inputBinding:
    prefix: --random-file
- id: egd_file
  doc: file naming the EGD socket with random data
  type: File
  inputBinding:
    prefix: --egd-file
- id: no_h_sts
  doc: disable HSTS
  type: boolean
  inputBinding:
    prefix: --no-hsts
- id: h_sts_file
  doc: path of HSTS database (will override default)
  type: boolean
  inputBinding:
    prefix: --hsts-file
- id: ftp_user
  doc: set ftp user to USER
  type: string
  inputBinding:
    prefix: --ftp-user
- id: ftp_password
  doc: set ftp password to PASS
  type: string
  inputBinding:
    prefix: --ftp-password
- id: no_remove_listing
  doc: don't remove '.listing' files
  type: boolean
  inputBinding:
    prefix: --no-remove-listing
- id: no_glob
  doc: turn off FTP file name globbing
  type: boolean
  inputBinding:
    prefix: --no-glob
- id: no_passive_ftp
  doc: disable the "passive" transfer mode
  type: boolean
  inputBinding:
    prefix: --no-passive-ftp
- id: preserve_permissions
  doc: preserve remote file permissions
  type: boolean
  inputBinding:
    prefix: --preserve-permissions
- id: retr_symlinks
  doc: when recursing, get linked-to files (not dir)
  type: boolean
  inputBinding:
    prefix: --retr-symlinks
- id: ftps_implicit
  doc: use implicit FTPS (default port is 990)
  type: boolean
  inputBinding:
    prefix: --ftps-implicit
- id: ftps_resume_ssl
  doc: resume the SSL/TLS session started in the control connection when opening a
    data connection
  type: boolean
  inputBinding:
    prefix: --ftps-resume-ssl
- id: ftps_clear_data_connection
  doc: cipher the control channel only; all the data will be in plaintext
  type: boolean
  inputBinding:
    prefix: --ftps-clear-data-connection
- id: ftps_fall_back_to_ftp
  doc: fall back to FTP if FTPS is not supported in the target server
  type: boolean
  inputBinding:
    prefix: --ftps-fallback-to-ftp
- id: war_c_file
  doc: save request/response data to a .warc.gz file
  type: File
  inputBinding:
    prefix: --warc-file
- id: war_c_header
  doc: insert STRING into the warcinfo record
  type: string
  inputBinding:
    prefix: --warc-header
- id: war_c_max_size
  doc: set maximum size of WARC files to NUMBER
  type: string
  inputBinding:
    prefix: --warc-max-size
- id: war_c_cdx
  doc: write CDX index files
  type: boolean
  inputBinding:
    prefix: --warc-cdx
- id: war_c_ded_up
  doc: do not store records listed in this CDX file
  type: File
  inputBinding:
    prefix: --warc-dedup
- id: no_war_c_compression
  doc: do not compress WARC files with GZIP
  type: boolean
  inputBinding:
    prefix: --no-warc-compression
- id: no_war_c_digests
  doc: do not calculate SHA1 digests
  type: boolean
  inputBinding:
    prefix: --no-warc-digests
- id: no_war_c_keep_log
  doc: do not store the log file in a WARC record
  type: boolean
  inputBinding:
    prefix: --no-warc-keep-log
- id: war_c_tempdir
  doc: location for temporary files created by the WARC writer
  type: Directory
  inputBinding:
    prefix: --warc-tempdir
- id: r
  doc: ',  --recursive                 specify recursive download'
  type: boolean
  inputBinding:
    prefix: -r
- id: l
  doc: ',  --level=NUMBER              maximum recursion depth (inf or 0 for infinite)
    --delete-after              delete files locally after downloading them'
  type: boolean
  inputBinding:
    prefix: -l
- id: k
  doc: ',  --convert-links             make links in downloaded HTML or CSS point
    to local files --convert-file-only         convert the file part of the URLs only
    (usually known as the basename) --backups=N                 before writing file
    X, rotate up to N backup files'
  type: boolean
  inputBinding:
    prefix: -k
- id: k
  doc: ',  --backup-converted          before converting file X, back up as X.orig'
  type: boolean
  inputBinding:
    prefix: -K
- id: m
  doc: ',  --mirror                    shortcut for -N -r -l inf --no-remove-listing'
  type: boolean
  inputBinding:
    prefix: -m
- id: p
  doc: ',  --page-requisites           get all images, etc. needed to display HTML
    page --strict-comments           turn on strict (SGML) handling of HTML comments'
  type: boolean
  inputBinding:
    prefix: -p
- id: a
  doc: ',  --accept=LIST               comma-separated list of accepted extensions'
  type: boolean
  inputBinding:
    prefix: -A
- id: r
  doc: ',  --reject=LIST               comma-separated list of rejected extensions
    --accept-regex=REGEX        regex matching accepted URLs --reject-regex=REGEX        regex
    matching rejected URLs --regex-type=TYPE           regex type (posix)'
  type: boolean
  inputBinding:
    prefix: -R
- id: d
  doc: ',  --domains=LIST              comma-separated list of accepted domains --exclude-domains=LIST      comma-separated
    list of rejected domains --follow-ftp                follow FTP links from HTML
    documents --follow-tags=LIST          comma-separated list of followed HTML tags
    --ignore-tags=LIST          comma-separated list of ignored HTML tags'
  type: boolean
  inputBinding:
    prefix: -D
- id: h
  doc: ',  --span-hosts                go to foreign hosts when recursive'
  type: boolean
  inputBinding:
    prefix: -H
- id: l
  doc: ',  --relative                  follow relative links only'
  type: boolean
  inputBinding:
    prefix: -L
- id: i
  doc: ",  --include-directories=LIST  list of allowed directories --trust-server-names\
    \        use the name specified by the redirection URL's last component"
  type: boolean
  inputBinding:
    prefix: -I
- id: x
  doc: ',  --exclude-directories=LIST  list of excluded directories'
  type: boolean
  inputBinding:
    prefix: -X
- id: no_parent
  doc: don't ascend to the parent directory
  type: boolean
  inputBinding:
    prefix: --no-parent
outputs: []
cwlVersion: v1.1
baseCommand:
- wget
