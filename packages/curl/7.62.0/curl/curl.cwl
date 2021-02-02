class: CommandLineTool
id: curl.cwl
inputs:
- id: in_abstract_unix_socket
  doc: Connect via abstract Unix domain socket
  type: File
  inputBinding:
    prefix: --abstract-unix-socket
- id: in_any_auth
  doc: Pick any authentication method
  type: boolean
  inputBinding:
    prefix: --anyauth
- id: in_append
  doc: Append to target file when uploading
  type: boolean
  inputBinding:
    prefix: --append
- id: in_basic
  doc: Use HTTP Basic Authentication
  type: boolean
  inputBinding:
    prefix: --basic
- id: in_cacert
  doc: CA certificate to verify peer against
  type: File
  inputBinding:
    prefix: --cacert
- id: in_ca_path
  doc: CA directory to verify peer against
  type: Directory
  inputBinding:
    prefix: --capath
- id: in_cert
  doc: <certificate[:password]> Client certificate file and password
  type: boolean
  inputBinding:
    prefix: --cert
- id: in_cert_status
  doc: Verify the status of the server certificate
  type: boolean
  inputBinding:
    prefix: --cert-status
- id: in_cert_type
  doc: Certificate file type (DER/PEM/ENG)
  type: File
  inputBinding:
    prefix: --cert-type
- id: in_ciphers
  doc: SSL ciphers to use
  type: string
  inputBinding:
    prefix: --ciphers
- id: in_compressed
  doc: Request compressed response
  type: boolean
  inputBinding:
    prefix: --compressed
- id: in_compressed_ssh
  doc: SSH compression
  type: string
  inputBinding:
    prefix: --compressed-ssh
- id: in_config
  doc: Read config from a file
  type: File
  inputBinding:
    prefix: --config
- id: in_connect_timeout
  doc: Maximum time allowed for connection
  type: string
  inputBinding:
    prefix: --connect-timeout
- id: in_connect_to
  doc: <HOST1:PORT1:HOST2:PORT2> Connect to host
  type: boolean
  inputBinding:
    prefix: --connect-to
- id: in_continue_at
  doc: Resumed transfer offset
  type: string
  inputBinding:
    prefix: --continue-at
- id: in_cookie
  doc: Send cookies from string/file
  type: File
  inputBinding:
    prefix: --cookie
- id: in_cookie_jar
  doc: Write cookies to <filename> after operation
  type: File
  inputBinding:
    prefix: --cookie-jar
- id: in_create_dirs
  doc: Create necessary local directory hierarchy
  type: boolean
  inputBinding:
    prefix: --create-dirs
- id: in_crlf
  doc: Convert LF to CRLF in upload
  type: boolean
  inputBinding:
    prefix: --crlf
- id: in_crl_file
  doc: Get a CRL list in PEM format from the given file
  type: File
  inputBinding:
    prefix: --crlfile
- id: in_data
  doc: HTTP POST data
  type: string
  inputBinding:
    prefix: --data
- id: in_data_ascii
  doc: HTTP POST ASCII data
  type: string
  inputBinding:
    prefix: --data-ascii
- id: in_data_binary
  doc: HTTP POST binary data
  type: string
  inputBinding:
    prefix: --data-binary
- id: in_data_raw
  doc: HTTP POST data, '@' allowed
  type: string
  inputBinding:
    prefix: --data-raw
- id: in_data_urlencode
  doc: HTTP POST data url encoded
  type: string
  inputBinding:
    prefix: --data-urlencode
- id: in_delegation
  doc: GSS-API delegation permission
  type: string
  inputBinding:
    prefix: --delegation
- id: in_digest
  doc: Use HTTP Digest Authentication
  type: boolean
  inputBinding:
    prefix: --digest
- id: in_disable
  doc: Disable .curlrc
  type: boolean
  inputBinding:
    prefix: --disable
- id: in_disable_e_prt
  doc: Inhibit using EPRT or LPRT
  type: boolean
  inputBinding:
    prefix: --disable-eprt
- id: in_disable_epsv
  doc: Inhibit using EPSV
  type: boolean
  inputBinding:
    prefix: --disable-epsv
- id: in_disallow_username_in_url
  doc: username in url
  type: string
  inputBinding:
    prefix: --disallow-username-in-url
- id: in_dns_interface
  doc: Interface to use for DNS requests
  type: string
  inputBinding:
    prefix: --dns-interface
- id: in_dns_ipv_four_addr
  doc: IPv4 address to use for DNS requests
  type: long
  inputBinding:
    prefix: --dns-ipv4-addr
- id: in_dns_ipv_six_addr
  doc: IPv6 address to use for DNS requests
  type: long
  inputBinding:
    prefix: --dns-ipv6-addr
- id: in_dns_servers
  doc: DNS server addrs to use
  type: string
  inputBinding:
    prefix: --dns-servers
- id: in_doh_url
  doc: Resolve host names over DOH
  type: string
  inputBinding:
    prefix: --doh-url
- id: in_dump_header
  doc: Write the received headers to <filename>
  type: File
  inputBinding:
    prefix: --dump-header
- id: in_egd_file
  doc: EGD socket path for random data
  type: File
  inputBinding:
    prefix: --egd-file
- id: in_engine
  doc: Crypto engine to use
  type: string
  inputBinding:
    prefix: --engine
- id: in_expect_one_zero_zero_timeout
  doc: How long to wait for 100-continue
  type: long
  inputBinding:
    prefix: --expect100-timeout
- id: in_fail
  doc: Fail silently (no output at all) on HTTP errors
  type: boolean
  inputBinding:
    prefix: --fail
- id: in_fail_early
  doc: Fail on first transfer error, do not continue
  type: boolean
  inputBinding:
    prefix: --fail-early
- id: in_false_start
  doc: Enable TLS False Start
  type: boolean
  inputBinding:
    prefix: --false-start
- id: in_form
  doc: <name=content> Specify multipart MIME data
  type: boolean
  inputBinding:
    prefix: --form
- id: in_form_string
  doc: <name=string> Specify multipart MIME data
  type: boolean
  inputBinding:
    prefix: --form-string
- id: in_ftp_account
  doc: Account data string
  type: string
  inputBinding:
    prefix: --ftp-account
- id: in_ftp_alternative_to_user
  doc: String to replace USER [name]
  type: string
  inputBinding:
    prefix: --ftp-alternative-to-user
- id: in_ftp_create_dirs
  doc: the remote dirs if not present
  type: string
  inputBinding:
    prefix: --ftp-create-dirs
- id: in_ftp_method
  doc: Control CWD usage
  type: string
  inputBinding:
    prefix: --ftp-method
- id: in_ftp_pasv
  doc: Use PASV/EPSV instead of PORT
  type: boolean
  inputBinding:
    prefix: --ftp-pasv
- id: in_ftp_port
  doc: Use PORT instead of PASV
  type: string
  inputBinding:
    prefix: --ftp-port
- id: in_ftp_pret
  doc: Send PRET before PASV
  type: boolean
  inputBinding:
    prefix: --ftp-pret
- id: in_ftp_skip_pasv_ip
  doc: the IP address for PASV
  type: string
  inputBinding:
    prefix: --ftp-skip-pasv-ip
- id: in_ftp_ssl_ccc
  doc: Send CCC after authenticating
  type: boolean
  inputBinding:
    prefix: --ftp-ssl-ccc
- id: in_ftp_ssl_ccc_mode
  doc: Set CCC mode
  type: string
  inputBinding:
    prefix: --ftp-ssl-ccc-mode
- id: in_ftp_ssl_control
  doc: SSL/TLS for FTP login, clear for transfer
  type: string
  inputBinding:
    prefix: --ftp-ssl-control
- id: in_get
  doc: Put the post data in the URL and use GET
  type: boolean
  inputBinding:
    prefix: --get
- id: in_glob_off
  doc: Disable URL sequences and ranges using {} and []
  type: boolean
  inputBinding:
    prefix: --globoff
- id: in_happy_eyeballs_timeout_ms
  doc: How long to wait in milliseconds for IPv6 before trying IPv4
  type: long
  inputBinding:
    prefix: --happy-eyeballs-timeout-ms
- id: in_ha_proxy_protocol
  doc: HAProxy PROXY protocol v1 header
  type: long
  inputBinding:
    prefix: --haproxy-protocol
- id: in_head
  doc: Show document info only
  type: boolean
  inputBinding:
    prefix: --head
- id: in_header
  doc: Pass custom header(s) to server
  type: File
  inputBinding:
    prefix: --header
- id: in_host_pub_md_five
  doc: Acceptable MD5 hash of the host public key
  type: long
  inputBinding:
    prefix: --hostpubmd5
- id: in_http_one_dot_zero
  doc: Use HTTP 1.0
  type: boolean
  inputBinding:
    prefix: --http1.0
- id: in_http_one_dot_one
  doc: Use HTTP 1.1
  type: boolean
  inputBinding:
    prefix: --http1.1
- id: in_http_two
  doc: Use HTTP 2
  type: boolean
  inputBinding:
    prefix: --http2
- id: in_http_two_prior_knowledge
  doc: HTTP 2 without HTTP/1.1 Upgrade
  type: long
  inputBinding:
    prefix: --http2-prior-knowledge
- id: in_ignore_content_length
  doc: the size of the remote resource
  type: long
  inputBinding:
    prefix: --ignore-content-length
- id: in_include
  doc: Include protocol response headers in the output
  type: boolean
  inputBinding:
    prefix: --include
- id: in_insecure
  doc: Allow insecure server connections when using SSL
  type: boolean
  inputBinding:
    prefix: --insecure
- id: in_interface
  doc: Use network INTERFACE (or address)
  type: string
  inputBinding:
    prefix: --interface
- id: in_ipv_four
  doc: Resolve names to IPv4 addresses
  type: boolean
  inputBinding:
    prefix: --ipv4
- id: in_ipv_six
  doc: Resolve names to IPv6 addresses
  type: boolean
  inputBinding:
    prefix: --ipv6
- id: in_junk_session_cookies
  doc: session cookies read from file
  type: File
  inputBinding:
    prefix: --junk-session-cookies
- id: in_keepalive_time
  doc: Interval time for keepalive probes
  type: string
  inputBinding:
    prefix: --keepalive-time
- id: in_key
  doc: Private key file name
  type: File
  inputBinding:
    prefix: --key
- id: in_key_type
  doc: Private key file type (DER/PEM/ENG)
  type: File
  inputBinding:
    prefix: --key-type
- id: in_krb
  doc: Enable Kerberos with security <level>
  type: string
  inputBinding:
    prefix: --krb
- id: in_libcurl
  doc: Dump libcurl equivalent code of this command line
  type: File
  inputBinding:
    prefix: --libcurl
- id: in_limit_rate
  doc: Limit transfer speed to RATE
  type: string
  inputBinding:
    prefix: --limit-rate
- id: in_list_only
  doc: List only mode
  type: boolean
  inputBinding:
    prefix: --list-only
- id: in_local_port
  doc: Force use of RANGE for local port numbers
  type: long
  inputBinding:
    prefix: --local-port
- id: in_location
  doc: Follow redirects
  type: boolean
  inputBinding:
    prefix: --location
- id: in_location_trusted
  doc: ', and send auth to other hosts'
  type: string
  inputBinding:
    prefix: --location-trusted
- id: in_login_options
  doc: Server login options
  type: string
  inputBinding:
    prefix: --login-options
- id: in_mail_auth
  doc: Originator address of the original email
  type: string
  inputBinding:
    prefix: --mail-auth
- id: in_mail_from
  doc: Mail from this address
  type: string
  inputBinding:
    prefix: --mail-from
- id: in_mail_rcpt
  doc: Mail to this address
  type: string
  inputBinding:
    prefix: --mail-rcpt
- id: in_manual
  doc: Display the full manual
  type: boolean
  inputBinding:
    prefix: --manual
- id: in_max_filesize
  doc: Maximum file size to download
  type: long
  inputBinding:
    prefix: --max-filesize
- id: in_max_red_irs
  doc: Maximum number of redirects allowed
  type: long
  inputBinding:
    prefix: --max-redirs
- id: in_max_time
  doc: Maximum time allowed for the transfer
  type: long
  inputBinding:
    prefix: --max-time
- id: in_metalink
  doc: Process given URLs as metalink XML file
  type: boolean
  inputBinding:
    prefix: --metalink
- id: in_negotiate
  doc: Use HTTP Negotiate (SPNEGO) authentication
  type: boolean
  inputBinding:
    prefix: --negotiate
- id: in_netrc
  doc: Must read .netrc for user name and password
  type: boolean
  inputBinding:
    prefix: --netrc
- id: in_netrc_file
  doc: Specify FILE for netrc
  type: File
  inputBinding:
    prefix: --netrc-file
- id: in_netrc_optional
  doc: either .netrc or URL
  type: string
  inputBinding:
    prefix: --netrc-optional
- id: in_no_a_lpn
  doc: Disable the ALPN TLS extension
  type: boolean
  inputBinding:
    prefix: --no-alpn
- id: in_no_buffer
  doc: Disable buffering of the output stream
  type: boolean
  inputBinding:
    prefix: --no-buffer
- id: in_no_keepalive
  doc: Disable TCP keepalive on the connection
  type: boolean
  inputBinding:
    prefix: --no-keepalive
- id: in_no_npn
  doc: Disable the NPN TLS extension
  type: boolean
  inputBinding:
    prefix: --no-npn
- id: in_no_session_id
  doc: Disable SSL session-ID reusing
  type: boolean
  inputBinding:
    prefix: --no-sessionid
- id: in_no_proxy
  doc: List of hosts which do not use proxy
  type: string
  inputBinding:
    prefix: --noproxy
- id: in_ntlm
  doc: Use HTTP NTLM authentication
  type: boolean
  inputBinding:
    prefix: --ntlm
- id: in_ntlm_wb
  doc: Use HTTP NTLM authentication with winbind
  type: boolean
  inputBinding:
    prefix: --ntlm-wb
- id: in_o_auth_two_bearer
  doc: OAuth 2 Bearer Token
  type: long
  inputBinding:
    prefix: --oauth2-bearer
- id: in_output
  doc: Write to file instead of stdout
  type: File
  inputBinding:
    prefix: --output
- id: in_pass
  doc: Pass phrase for the private key
  type: string
  inputBinding:
    prefix: --pass
- id: in_path_as_is
  doc: in URL path
  type: string[]
  inputBinding:
    prefix: --path-as-is
- id: in_pinned_pubkey
  doc: FILE/HASHES Public key to verify peer against
  type: File
  inputBinding:
    prefix: --pinnedpubkey
- id: in_post_three_zero_one
  doc: Do not switch to GET after following a 301
  type: boolean
  inputBinding:
    prefix: --post301
- id: in_post_three_zero_two
  doc: Do not switch to GET after following a 302
  type: boolean
  inputBinding:
    prefix: --post302
- id: in_post_three_zero_three
  doc: Do not switch to GET after following a 303
  type: boolean
  inputBinding:
    prefix: --post303
- id: in_pre_proxy
  doc: '[protocol://]host[:port] Use this proxy first'
  type: boolean
  inputBinding:
    prefix: --preproxy
- id: in_proto
  doc: Enable/disable PROTOCOLS
  type: string
  inputBinding:
    prefix: --proto
- id: in_proto_default
  doc: Use PROTOCOL for any URL missing a scheme
  type: string
  inputBinding:
    prefix: --proto-default
- id: in_proto_redir
  doc: Enable/disable PROTOCOLS on redirect
  type: string
  inputBinding:
    prefix: --proto-redir
- id: in_proxy
  doc: '[protocol://]host[:port] Use this proxy'
  type: boolean
  inputBinding:
    prefix: --proxy
- id: in_proxy_any_auth
  doc: any proxy authentication method
  type: string
  inputBinding:
    prefix: --proxy-anyauth
- id: in_proxy_basic
  doc: Use Basic authentication on the proxy
  type: boolean
  inputBinding:
    prefix: --proxy-basic
- id: in_proxy_cacert
  doc: CA certificate to verify peer against for proxy
  type: File
  inputBinding:
    prefix: --proxy-cacert
- id: in_proxy_ca_path
  doc: CA directory to verify peer against for proxy
  type: Directory
  inputBinding:
    prefix: --proxy-capath
- id: in_proxy_cert
  doc: <cert[:passwd]> Set client certificate for proxy
  type: boolean
  inputBinding:
    prefix: --proxy-cert
- id: in_proxy_cert_type
  doc: Client certificate type for HTTPS proxy
  type: string
  inputBinding:
    prefix: --proxy-cert-type
- id: in_proxy_ciphers
  doc: SSL ciphers to use for proxy
  type: string
  inputBinding:
    prefix: --proxy-ciphers
- id: in_proxy_crl_file
  doc: Set a CRL list for proxy
  type: File
  inputBinding:
    prefix: --proxy-crlfile
- id: in_proxy_digest
  doc: Use Digest authentication on the proxy
  type: boolean
  inputBinding:
    prefix: --proxy-digest
- id: in_proxy_header
  doc: Pass custom header(s) to proxy
  type: File
  inputBinding:
    prefix: --proxy-header
- id: in_proxy_insecure
  doc: HTTPS proxy connections without verifying the proxy
  type: string
  inputBinding:
    prefix: --proxy-insecure
- id: in_proxy_key
  doc: Private key for HTTPS proxy
  type: string
  inputBinding:
    prefix: --proxy-key
- id: in_proxy_key_type
  doc: Private key file type for proxy
  type: File
  inputBinding:
    prefix: --proxy-key-type
- id: in_proxy_negotiate
  doc: HTTP Negotiate (SPNEGO) authentication on the proxy
  type: string
  inputBinding:
    prefix: --proxy-negotiate
- id: in_proxy_ntlm
  doc: Use NTLM authentication on the proxy
  type: boolean
  inputBinding:
    prefix: --proxy-ntlm
- id: in_proxy_pass
  doc: Pass phrase for the private key for HTTPS proxy
  type: string
  inputBinding:
    prefix: --proxy-pass
- id: in_proxy_pinned_pubkey
  doc: FILE/HASHES public key to verify proxy with
  type: File
  inputBinding:
    prefix: --proxy-pinnedpubkey
- id: in_proxy_service_name
  doc: SPNEGO proxy service name
  type: string
  inputBinding:
    prefix: --proxy-service-name
- id: in_proxy_ssl_allow_beast
  doc: security flaw for interop for HTTPS proxy
  type: string
  inputBinding:
    prefix: --proxy-ssl-allow-beast
- id: in_proxy_tls_one_three_ciphers
  doc: TLS 1.3 proxy cipher suites
  type: long
  inputBinding:
    prefix: --proxy-tls13-ciphers
- id: in_proxy_tls_authtype
  doc: TLS authentication type for HTTPS proxy
  type: string
  inputBinding:
    prefix: --proxy-tlsauthtype
- id: in_proxy_tls_password
  doc: TLS password for HTTPS proxy
  type: string
  inputBinding:
    prefix: --proxy-tlspassword
- id: in_proxy_tls_user
  doc: TLS username for HTTPS proxy
  type: string
  inputBinding:
    prefix: --proxy-tlsuser
- id: in_proxy_tls_v_one
  doc: Use TLSv1 for HTTPS proxy
  type: boolean
  inputBinding:
    prefix: --proxy-tlsv1
- id: in_proxy_user
  doc: <user:password> Proxy user and password
  type: boolean
  inputBinding:
    prefix: --proxy-user
- id: in_proxy_one_dot_zero
  doc: <host[:port]> Use HTTP/1.0 proxy on given port
  type: boolean
  inputBinding:
    prefix: --proxy1.0
- id: in_proxy_tunnel
  doc: Operate through an HTTP proxy tunnel (using CONNECT)
  type: boolean
  inputBinding:
    prefix: --proxytunnel
- id: in_pubkey
  doc: SSH Public key file name
  type: File
  inputBinding:
    prefix: --pubkey
- id: in_quote
  doc: Send command(s) to server before transfer
  type: boolean
  inputBinding:
    prefix: --quote
- id: in_random_file
  doc: File for reading random data from
  type: File
  inputBinding:
    prefix: --random-file
- id: in_range
  doc: Retrieve only the bytes within RANGE
  type: string
  inputBinding:
    prefix: --range
- id: in_raw
  doc: Do HTTP "raw"; no transfer decoding
  type: boolean
  inputBinding:
    prefix: --raw
- id: in_referer
  doc: Referrer URL
  type: string
  inputBinding:
    prefix: --referer
- id: in_remote_header_name
  doc: the header-provided filename
  type: File
  inputBinding:
    prefix: --remote-header-name
- id: in_remote_name
  doc: Write output to a file named as the remote file
  type: File
  inputBinding:
    prefix: --remote-name
- id: in_remote_name_all
  doc: the remote file name for all URLs
  type: File
  inputBinding:
    prefix: --remote-name-all
- id: in_remote_time
  doc: Set the remote file's time on the local output
  type: File
  inputBinding:
    prefix: --remote-time
- id: in_request
  doc: Specify request command to use
  type: string
  inputBinding:
    prefix: --request
- id: in_request_target
  doc: the target for this request
  type: string
  inputBinding:
    prefix: --request-target
- id: in_resolve
  doc: <host:port:address[,address]...> Resolve the host+port to this address
  type: boolean
  inputBinding:
    prefix: --resolve
- id: in_retry
  doc: Retry request if transient problems occur
  type: long
  inputBinding:
    prefix: --retry
- id: in_retry_conn_refused
  doc: on connection refused (use with --retry)
  type: string
  inputBinding:
    prefix: --retry-connrefused
- id: in_retry_delay
  doc: Wait time between retries
  type: string
  inputBinding:
    prefix: --retry-delay
- id: in_retry_max_time
  doc: Retry only within this period
  type: long
  inputBinding:
    prefix: --retry-max-time
- id: in_sasl_ir
  doc: Enable initial response in SASL authentication
  type: boolean
  inputBinding:
    prefix: --sasl-ir
- id: in_service_name
  doc: SPNEGO service name
  type: string
  inputBinding:
    prefix: --service-name
- id: in_show_error
  doc: Show error even when -s is used
  type: boolean
  inputBinding:
    prefix: --show-error
- id: in_silent
  doc: Silent mode
  type: boolean
  inputBinding:
    prefix: --silent
- id: in_socks_four
  doc: <host[:port]> SOCKS4 proxy on given host + port
  type: boolean
  inputBinding:
    prefix: --socks4
- id: in_socks_four_a
  doc: <host[:port]> SOCKS4a proxy on given host + port
  type: boolean
  inputBinding:
    prefix: --socks4a
- id: in_socks_five
  doc: <host[:port]> SOCKS5 proxy on given host + port
  type: boolean
  inputBinding:
    prefix: --socks5
- id: in_socks_five_basic
  doc: Enable username/password auth for SOCKS5 proxies
  type: boolean
  inputBinding:
    prefix: --socks5-basic
- id: in_socks_five_gssapi
  doc: GSS-API auth for SOCKS5 proxies
  type: long
  inputBinding:
    prefix: --socks5-gssapi
- id: in_socks_five_gssapi_nec
  doc: with NEC SOCKS5 server
  type: long
  inputBinding:
    prefix: --socks5-gssapi-nec
- id: in_socks_five_gssapi_service
  doc: SOCKS5 proxy service name for GSS-API
  type: long
  inputBinding:
    prefix: --socks5-gssapi-service
- id: in_socks_five_hostname
  doc: <host[:port]> SOCKS5 proxy, pass host name to proxy
  type: boolean
  inputBinding:
    prefix: --socks5-hostname
- id: in_speed_limit
  doc: Stop transfers slower than this
  type: string
  inputBinding:
    prefix: --speed-limit
- id: in_speed_time
  doc: Trigger 'speed-limit' abort after this time
  type: string
  inputBinding:
    prefix: --speed-time
- id: in_ssl
  doc: Try SSL/TLS
  type: boolean
  inputBinding:
    prefix: --ssl
- id: in_ssl_allow_beast
  doc: security flaw to improve interop
  type: string
  inputBinding:
    prefix: --ssl-allow-beast
- id: in_ssl_no_revoke
  doc: cert revocation checks (WinSSL)
  type: string
  inputBinding:
    prefix: --ssl-no-revoke
- id: in_ssl_reqd
  doc: Require SSL/TLS
  type: boolean
  inputBinding:
    prefix: --ssl-reqd
- id: in_ssl_v_two
  doc: Use SSLv2
  type: boolean
  inputBinding:
    prefix: --sslv2
- id: in_ssl_v_three
  doc: Use SSLv3
  type: boolean
  inputBinding:
    prefix: --sslv3
- id: in_stderr
  doc: Where to redirect stderr
  type: boolean
  inputBinding:
    prefix: --stderr
- id: in_styled_output
  doc: styled output for HTTP headers
  type: string
  inputBinding:
    prefix: --styled-output
- id: in_suppress_connect_headers
  doc: proxy CONNECT response headers
  type: string
  inputBinding:
    prefix: --suppress-connect-headers
- id: in_tcp_fast_open
  doc: Use TCP Fast Open
  type: boolean
  inputBinding:
    prefix: --tcp-fastopen
- id: in_tcp_no_delay
  doc: Use the TCP_NODELAY option
  type: boolean
  inputBinding:
    prefix: --tcp-nodelay
- id: in_telnet_option
  doc: <opt=val> Set telnet option
  type: boolean
  inputBinding:
    prefix: --telnet-option
- id: in_tftp_blksize
  doc: Set TFTP BLKSIZE option
  type: string
  inputBinding:
    prefix: --tftp-blksize
- id: in_tftp_no_options
  doc: not send any TFTP options
  type: string
  inputBinding:
    prefix: --tftp-no-options
- id: in_time_cond
  doc: Transfer based on a time condition
  type: string
  inputBinding:
    prefix: --time-cond
- id: in_tls_max
  doc: Use TLSv1.0 or greater
  type: long
  inputBinding:
    prefix: --tls-max
- id: in_tls_one_three_ciphers
  doc: TLS 1.3 cipher suites to use
  type: long
  inputBinding:
    prefix: --tls13-ciphers
- id: in_tls_authtype
  doc: TLS authentication type
  type: string
  inputBinding:
    prefix: --tlsauthtype
- id: in_tls_password
  doc: TLS password
  type: boolean
  inputBinding:
    prefix: --tlspassword
- id: in_tls_user
  doc: TLS user name
  type: string
  inputBinding:
    prefix: --tlsuser
- id: in_tls_v_one
  doc: Use TLSv1.0 or greater
  type: boolean
  inputBinding:
    prefix: --tlsv1
- id: in_tls_v_one_dot_zero
  doc: Use TLSv1.0 or greater
  type: boolean
  inputBinding:
    prefix: --tlsv1.0
- id: in_tls_v_one_dot_one
  doc: Use TLSv1.1 or greater
  type: boolean
  inputBinding:
    prefix: --tlsv1.1
- id: in_tls_v_one_dot_two
  doc: Use TLSv1.2 or greater
  type: boolean
  inputBinding:
    prefix: --tlsv1.2
- id: in_tls_v_one_dot_three
  doc: Use TLSv1.3 or greater
  type: boolean
  inputBinding:
    prefix: --tlsv1.3
- id: in_tr_encoding
  doc: Request compressed transfer encoding
  type: boolean
  inputBinding:
    prefix: --tr-encoding
- id: in_trace
  doc: Write a debug trace to FILE
  type: File
  inputBinding:
    prefix: --trace
- id: in_trace_ascii
  doc: Like --trace, but without hex output
  type: File
  inputBinding:
    prefix: --trace-ascii
- id: in_trace_time
  doc: Add time stamps to trace/verbose output
  type: boolean
  inputBinding:
    prefix: --trace-time
- id: in_unix_socket
  doc: Connect through this Unix domain socket
  type: File
  inputBinding:
    prefix: --unix-socket
- id: in_upload_file
  doc: Transfer local FILE to destination
  type: File
  inputBinding:
    prefix: --upload-file
- id: in_url_to_work
  doc: URL to work with
  type: string
  inputBinding:
    prefix: --url
- id: in_use_ascii
  doc: Use ASCII/text transfer
  type: boolean
  inputBinding:
    prefix: --use-ascii
- id: in_user
  doc: <user:password> Server user and password
  type: boolean
  inputBinding:
    prefix: --user
- id: in_user_agent
  doc: Send User-Agent <name> to server
  type: string
  inputBinding:
    prefix: --user-agent
- id: in_verbose
  doc: Make the operation more talkative
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_write_out
  doc: Use output FORMAT after completion
  type: string
  inputBinding:
    prefix: --write-out
- id: in_xattr
  doc: Store metadata in extended file attributes
  type: boolean
  inputBinding:
    prefix: --xattr
- id: in_options_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_216
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_remote_name
  doc: Write output to a file named as the remote file
  type: File
  outputBinding:
    glob: $(inputs.in_remote_name)
- id: out_remote_time
  doc: Set the remote file's time on the local output
  type: File
  outputBinding:
    glob: $(inputs.in_remote_time)
cwlVersion: v1.1
baseCommand:
- curl
