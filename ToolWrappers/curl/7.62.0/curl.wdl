version 1.0

task Curl {
  input {
    File? abstract_unix_socket
    Boolean? any_auth
    Boolean? append
    Boolean? basic
    File? cacert
    Directory? ca_path
    Boolean? cert
    Boolean? cert_status
    File? cert_type
    String? ciphers
    Boolean? compressed
    String? compressed_ssh
    File? config
    String? connect_timeout
    Boolean? connect_to
    String? continue_at
    File? cookie
    File? cookie_jar
    Boolean? create_dirs
    Boolean? crlf
    File? crl_file
    String? data
    String? data_ascii
    String? data_binary
    String? data_raw
    String? data_urlencode
    String? delegation
    Boolean? digest
    Boolean? disable
    Boolean? disable_e_prt
    Boolean? disable_epsv
    String? disallow_username_in_url
    String? dns_interface
    Int? dns_ipv_four_addr
    Int? dns_ipv_six_addr
    String? dns_servers
    String? doh_url
    File? dump_header
    File? egd_file
    String? engine
    Int? expect_one_zero_zero_timeout
    Boolean? fail
    Boolean? fail_early
    Boolean? false_start
    Boolean? form
    Boolean? form_string
    String? ftp_account
    String? ftp_alternative_to_user
    String? ftp_create_dirs
    String? ftp_method
    Boolean? ftp_pasv
    String? ftp_port
    Boolean? ftp_pret
    String? ftp_skip_pasv_ip
    Boolean? ftp_ssl_ccc
    String? ftp_ssl_ccc_mode
    String? ftp_ssl_control
    Boolean? get
    Boolean? glob_off
    Int? happy_eyeballs_timeout_ms
    Int? ha_proxy_protocol
    Boolean? head
    File? header
    Int? host_pub_md_five
    Boolean? http_one_dot_zero
    Boolean? http_one_dot_one
    Boolean? http_two
    Int? http_two_prior_knowledge
    Int? ignore_content_length
    Boolean? include
    Boolean? insecure
    String? interface
    Boolean? ipv_four
    Boolean? ipv_six
    File? junk_session_cookies
    String? keepalive_time
    File? key
    File? key_type
    String? krb
    File? libcurl
    String? limit_rate
    Boolean? list_only
    Int? local_port
    Boolean? location
    String? location_trusted
    String? login_options
    String? mail_auth
    String? mail_from
    String? mail_rcpt
    Boolean? manual
    Int? max_filesize
    Int? max_red_irs
    Int? max_time
    Boolean? metalink
    Boolean? negotiate
    Boolean? netrc
    File? netrc_file
    String? netrc_optional
    Boolean? no_a_lpn
    Boolean? no_buffer
    Boolean? no_keepalive
    Boolean? no_npn
    Boolean? no_session_id
    String? no_proxy
    Boolean? ntlm
    Boolean? ntlm_wb
    Int? o_auth_two_bearer
    File? write_file_stdout
    String? pass
    Array[String] path_as_is
    File? pinned_pubkey
    Boolean? post_three_zero_one
    Boolean? post_three_zero_two
    Boolean? post_three_zero_three
    Boolean? pre_proxy
    String? proto
    String? proto_default
    String? proto_redir
    Boolean? proxy
    String? proxy_any_auth
    Boolean? proxy_basic
    File? proxy_cacert
    Directory? proxy_ca_path
    Boolean? proxy_cert
    String? proxy_cert_type
    String? proxy_ciphers
    File? proxy_crl_file
    Boolean? proxy_digest
    File? proxy_header
    String? proxy_insecure
    String? proxy_key
    File? proxy_key_type
    String? proxy_negotiate
    Boolean? proxy_ntlm
    String? proxy_pass
    File? proxy_pinned_pubkey
    String? proxy_service_name
    String? proxy_ssl_allow_beast
    Int? proxy_tls_one_three_ciphers
    String? proxy_tls_authtype
    String? proxy_tls_password
    String? proxy_tls_user
    Boolean? proxy_tls_v_one
    Boolean? proxy_user
    Boolean? proxy_one_dot_zero
    Boolean? proxy_tunnel
    File? pubkey
    Boolean? quote
    File? random_file
    String? range
    Boolean? raw
    String? referer
    File? remote_header_name
    File? remote_name
    File? remote_name_all
    File? remote_time
    String? request
    String? request_target
    Boolean? resolve
    Int? retry
    String? retry_conn_refused
    String? retry_delay
    Int? retry_max_time
    Boolean? sasl_ir
    String? service_name
    Boolean? show_error
    Boolean? silent
    Boolean? socks_four
    Boolean? socks_four_a
    Boolean? socks_five
    Boolean? socks_five_basic
    Int? socks_five_gssapi
    Int? socks_five_gssapi_nec
    Int? socks_five_gssapi_service
    Boolean? socks_five_hostname
    String? speed_limit
    String? speed_time
    Boolean? ssl
    String? ssl_allow_beast
    String? ssl_no_revoke
    Boolean? ssl_reqd
    Boolean? ssl_v_two
    Boolean? ssl_v_three
    Boolean? stderr
    String? styled_output
    String? suppress_connect_headers
    Boolean? tcp_fast_open
    Boolean? tcp_no_delay
    Boolean? telnet_option
    String? tftp_blksize
    String? tftp_no_options
    String? time_cond
    Int? tls_max
    Int? tls_one_three_ciphers
    String? tls_authtype
    Boolean? tls_password
    String? tls_user
    Boolean? tls_v_one
    Boolean? tls_v_one_dot_zero
    Boolean? tls_v_one_dot_one
    Boolean? tls_v_one_dot_two
    Boolean? tls_v_one_dot_three
    Boolean? tr_encoding
    File? trace
    File? trace_ascii
    Boolean? trace_time
    File? unix_socket
    File? upload_file
    String? url_to_work
    Boolean? use_ascii
    Boolean? user
    String? user_agent
    Boolean? verbose
    String? write_out
    Boolean? xattr
    String? options_dot_dot_dot
    String var_216
  }
  command <<<
    curl \
      ~{options_dot_dot_dot} \
      ~{var_216} \
      ~{if defined(abstract_unix_socket) then ("--abstract-unix-socket " +  '"' + abstract_unix_socket + '"') else ""} \
      ~{if (any_auth) then "--anyauth" else ""} \
      ~{if (append) then "--append" else ""} \
      ~{if (basic) then "--basic" else ""} \
      ~{if defined(cacert) then ("--cacert " +  '"' + cacert + '"') else ""} \
      ~{if defined(ca_path) then ("--capath " +  '"' + ca_path + '"') else ""} \
      ~{if (cert) then "--cert" else ""} \
      ~{if (cert_status) then "--cert-status" else ""} \
      ~{if defined(cert_type) then ("--cert-type " +  '"' + cert_type + '"') else ""} \
      ~{if defined(ciphers) then ("--ciphers " +  '"' + ciphers + '"') else ""} \
      ~{if (compressed) then "--compressed" else ""} \
      ~{if defined(compressed_ssh) then ("--compressed-ssh " +  '"' + compressed_ssh + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(connect_timeout) then ("--connect-timeout " +  '"' + connect_timeout + '"') else ""} \
      ~{if (connect_to) then "--connect-to" else ""} \
      ~{if defined(continue_at) then ("--continue-at " +  '"' + continue_at + '"') else ""} \
      ~{if defined(cookie) then ("--cookie " +  '"' + cookie + '"') else ""} \
      ~{if defined(cookie_jar) then ("--cookie-jar " +  '"' + cookie_jar + '"') else ""} \
      ~{if (create_dirs) then "--create-dirs" else ""} \
      ~{if (crlf) then "--crlf" else ""} \
      ~{if defined(crl_file) then ("--crlfile " +  '"' + crl_file + '"') else ""} \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{if defined(data_ascii) then ("--data-ascii " +  '"' + data_ascii + '"') else ""} \
      ~{if defined(data_binary) then ("--data-binary " +  '"' + data_binary + '"') else ""} \
      ~{if defined(data_raw) then ("--data-raw " +  '"' + data_raw + '"') else ""} \
      ~{if defined(data_urlencode) then ("--data-urlencode " +  '"' + data_urlencode + '"') else ""} \
      ~{if defined(delegation) then ("--delegation " +  '"' + delegation + '"') else ""} \
      ~{if (digest) then "--digest" else ""} \
      ~{if (disable) then "--disable" else ""} \
      ~{if (disable_e_prt) then "--disable-eprt" else ""} \
      ~{if (disable_epsv) then "--disable-epsv" else ""} \
      ~{if defined(disallow_username_in_url) then ("--disallow-username-in-url " +  '"' + disallow_username_in_url + '"') else ""} \
      ~{if defined(dns_interface) then ("--dns-interface " +  '"' + dns_interface + '"') else ""} \
      ~{if defined(dns_ipv_four_addr) then ("--dns-ipv4-addr " +  '"' + dns_ipv_four_addr + '"') else ""} \
      ~{if defined(dns_ipv_six_addr) then ("--dns-ipv6-addr " +  '"' + dns_ipv_six_addr + '"') else ""} \
      ~{if defined(dns_servers) then ("--dns-servers " +  '"' + dns_servers + '"') else ""} \
      ~{if defined(doh_url) then ("--doh-url " +  '"' + doh_url + '"') else ""} \
      ~{if defined(dump_header) then ("--dump-header " +  '"' + dump_header + '"') else ""} \
      ~{if defined(egd_file) then ("--egd-file " +  '"' + egd_file + '"') else ""} \
      ~{if defined(engine) then ("--engine " +  '"' + engine + '"') else ""} \
      ~{if defined(expect_one_zero_zero_timeout) then ("--expect100-timeout " +  '"' + expect_one_zero_zero_timeout + '"') else ""} \
      ~{if (fail) then "--fail" else ""} \
      ~{if (fail_early) then "--fail-early" else ""} \
      ~{if (false_start) then "--false-start" else ""} \
      ~{if (form) then "--form" else ""} \
      ~{if (form_string) then "--form-string" else ""} \
      ~{if defined(ftp_account) then ("--ftp-account " +  '"' + ftp_account + '"') else ""} \
      ~{if defined(ftp_alternative_to_user) then ("--ftp-alternative-to-user " +  '"' + ftp_alternative_to_user + '"') else ""} \
      ~{if defined(ftp_create_dirs) then ("--ftp-create-dirs " +  '"' + ftp_create_dirs + '"') else ""} \
      ~{if defined(ftp_method) then ("--ftp-method " +  '"' + ftp_method + '"') else ""} \
      ~{if (ftp_pasv) then "--ftp-pasv" else ""} \
      ~{if defined(ftp_port) then ("--ftp-port " +  '"' + ftp_port + '"') else ""} \
      ~{if (ftp_pret) then "--ftp-pret" else ""} \
      ~{if defined(ftp_skip_pasv_ip) then ("--ftp-skip-pasv-ip " +  '"' + ftp_skip_pasv_ip + '"') else ""} \
      ~{if (ftp_ssl_ccc) then "--ftp-ssl-ccc" else ""} \
      ~{if defined(ftp_ssl_ccc_mode) then ("--ftp-ssl-ccc-mode " +  '"' + ftp_ssl_ccc_mode + '"') else ""} \
      ~{if defined(ftp_ssl_control) then ("--ftp-ssl-control " +  '"' + ftp_ssl_control + '"') else ""} \
      ~{if (get) then "--get" else ""} \
      ~{if (glob_off) then "--globoff" else ""} \
      ~{if defined(happy_eyeballs_timeout_ms) then ("--happy-eyeballs-timeout-ms " +  '"' + happy_eyeballs_timeout_ms + '"') else ""} \
      ~{if defined(ha_proxy_protocol) then ("--haproxy-protocol " +  '"' + ha_proxy_protocol + '"') else ""} \
      ~{if (head) then "--head" else ""} \
      ~{if defined(header) then ("--header " +  '"' + header + '"') else ""} \
      ~{if defined(host_pub_md_five) then ("--hostpubmd5 " +  '"' + host_pub_md_five + '"') else ""} \
      ~{if (http_one_dot_zero) then "--http1.0" else ""} \
      ~{if (http_one_dot_one) then "--http1.1" else ""} \
      ~{if (http_two) then "--http2" else ""} \
      ~{if defined(http_two_prior_knowledge) then ("--http2-prior-knowledge " +  '"' + http_two_prior_knowledge + '"') else ""} \
      ~{if defined(ignore_content_length) then ("--ignore-content-length " +  '"' + ignore_content_length + '"') else ""} \
      ~{if (include) then "--include" else ""} \
      ~{if (insecure) then "--insecure" else ""} \
      ~{if defined(interface) then ("--interface " +  '"' + interface + '"') else ""} \
      ~{if (ipv_four) then "--ipv4" else ""} \
      ~{if (ipv_six) then "--ipv6" else ""} \
      ~{if defined(junk_session_cookies) then ("--junk-session-cookies " +  '"' + junk_session_cookies + '"') else ""} \
      ~{if defined(keepalive_time) then ("--keepalive-time " +  '"' + keepalive_time + '"') else ""} \
      ~{if defined(key) then ("--key " +  '"' + key + '"') else ""} \
      ~{if defined(key_type) then ("--key-type " +  '"' + key_type + '"') else ""} \
      ~{if defined(krb) then ("--krb " +  '"' + krb + '"') else ""} \
      ~{if defined(libcurl) then ("--libcurl " +  '"' + libcurl + '"') else ""} \
      ~{if defined(limit_rate) then ("--limit-rate " +  '"' + limit_rate + '"') else ""} \
      ~{if (list_only) then "--list-only" else ""} \
      ~{if defined(local_port) then ("--local-port " +  '"' + local_port + '"') else ""} \
      ~{if (location) then "--location" else ""} \
      ~{if defined(location_trusted) then ("--location-trusted " +  '"' + location_trusted + '"') else ""} \
      ~{if defined(login_options) then ("--login-options " +  '"' + login_options + '"') else ""} \
      ~{if defined(mail_auth) then ("--mail-auth " +  '"' + mail_auth + '"') else ""} \
      ~{if defined(mail_from) then ("--mail-from " +  '"' + mail_from + '"') else ""} \
      ~{if defined(mail_rcpt) then ("--mail-rcpt " +  '"' + mail_rcpt + '"') else ""} \
      ~{if (manual) then "--manual" else ""} \
      ~{if defined(max_filesize) then ("--max-filesize " +  '"' + max_filesize + '"') else ""} \
      ~{if defined(max_red_irs) then ("--max-redirs " +  '"' + max_red_irs + '"') else ""} \
      ~{if defined(max_time) then ("--max-time " +  '"' + max_time + '"') else ""} \
      ~{if (metalink) then "--metalink" else ""} \
      ~{if (negotiate) then "--negotiate" else ""} \
      ~{if (netrc) then "--netrc" else ""} \
      ~{if defined(netrc_file) then ("--netrc-file " +  '"' + netrc_file + '"') else ""} \
      ~{if defined(netrc_optional) then ("--netrc-optional " +  '"' + netrc_optional + '"') else ""} \
      ~{if (no_a_lpn) then "--no-alpn" else ""} \
      ~{if (no_buffer) then "--no-buffer" else ""} \
      ~{if (no_keepalive) then "--no-keepalive" else ""} \
      ~{if (no_npn) then "--no-npn" else ""} \
      ~{if (no_session_id) then "--no-sessionid" else ""} \
      ~{if defined(no_proxy) then ("--noproxy " +  '"' + no_proxy + '"') else ""} \
      ~{if (ntlm) then "--ntlm" else ""} \
      ~{if (ntlm_wb) then "--ntlm-wb" else ""} \
      ~{if defined(o_auth_two_bearer) then ("--oauth2-bearer " +  '"' + o_auth_two_bearer + '"') else ""} \
      ~{if defined(write_file_stdout) then ("--output " +  '"' + write_file_stdout + '"') else ""} \
      ~{if defined(pass) then ("--pass " +  '"' + pass + '"') else ""} \
      ~{if defined(path_as_is) then ("--path-as-is " +  '"' + path_as_is + '"') else ""} \
      ~{if defined(pinned_pubkey) then ("--pinnedpubkey " +  '"' + pinned_pubkey + '"') else ""} \
      ~{if (post_three_zero_one) then "--post301" else ""} \
      ~{if (post_three_zero_two) then "--post302" else ""} \
      ~{if (post_three_zero_three) then "--post303" else ""} \
      ~{if (pre_proxy) then "--preproxy" else ""} \
      ~{if defined(proto) then ("--proto " +  '"' + proto + '"') else ""} \
      ~{if defined(proto_default) then ("--proto-default " +  '"' + proto_default + '"') else ""} \
      ~{if defined(proto_redir) then ("--proto-redir " +  '"' + proto_redir + '"') else ""} \
      ~{if (proxy) then "--proxy" else ""} \
      ~{if defined(proxy_any_auth) then ("--proxy-anyauth " +  '"' + proxy_any_auth + '"') else ""} \
      ~{if (proxy_basic) then "--proxy-basic" else ""} \
      ~{if defined(proxy_cacert) then ("--proxy-cacert " +  '"' + proxy_cacert + '"') else ""} \
      ~{if defined(proxy_ca_path) then ("--proxy-capath " +  '"' + proxy_ca_path + '"') else ""} \
      ~{if (proxy_cert) then "--proxy-cert" else ""} \
      ~{if defined(proxy_cert_type) then ("--proxy-cert-type " +  '"' + proxy_cert_type + '"') else ""} \
      ~{if defined(proxy_ciphers) then ("--proxy-ciphers " +  '"' + proxy_ciphers + '"') else ""} \
      ~{if defined(proxy_crl_file) then ("--proxy-crlfile " +  '"' + proxy_crl_file + '"') else ""} \
      ~{if (proxy_digest) then "--proxy-digest" else ""} \
      ~{if defined(proxy_header) then ("--proxy-header " +  '"' + proxy_header + '"') else ""} \
      ~{if defined(proxy_insecure) then ("--proxy-insecure " +  '"' + proxy_insecure + '"') else ""} \
      ~{if defined(proxy_key) then ("--proxy-key " +  '"' + proxy_key + '"') else ""} \
      ~{if defined(proxy_key_type) then ("--proxy-key-type " +  '"' + proxy_key_type + '"') else ""} \
      ~{if defined(proxy_negotiate) then ("--proxy-negotiate " +  '"' + proxy_negotiate + '"') else ""} \
      ~{if (proxy_ntlm) then "--proxy-ntlm" else ""} \
      ~{if defined(proxy_pass) then ("--proxy-pass " +  '"' + proxy_pass + '"') else ""} \
      ~{if defined(proxy_pinned_pubkey) then ("--proxy-pinnedpubkey " +  '"' + proxy_pinned_pubkey + '"') else ""} \
      ~{if defined(proxy_service_name) then ("--proxy-service-name " +  '"' + proxy_service_name + '"') else ""} \
      ~{if defined(proxy_ssl_allow_beast) then ("--proxy-ssl-allow-beast " +  '"' + proxy_ssl_allow_beast + '"') else ""} \
      ~{if defined(proxy_tls_one_three_ciphers) then ("--proxy-tls13-ciphers " +  '"' + proxy_tls_one_three_ciphers + '"') else ""} \
      ~{if defined(proxy_tls_authtype) then ("--proxy-tlsauthtype " +  '"' + proxy_tls_authtype + '"') else ""} \
      ~{if defined(proxy_tls_password) then ("--proxy-tlspassword " +  '"' + proxy_tls_password + '"') else ""} \
      ~{if defined(proxy_tls_user) then ("--proxy-tlsuser " +  '"' + proxy_tls_user + '"') else ""} \
      ~{if (proxy_tls_v_one) then "--proxy-tlsv1" else ""} \
      ~{if (proxy_user) then "--proxy-user" else ""} \
      ~{if (proxy_one_dot_zero) then "--proxy1.0" else ""} \
      ~{if (proxy_tunnel) then "--proxytunnel" else ""} \
      ~{if defined(pubkey) then ("--pubkey " +  '"' + pubkey + '"') else ""} \
      ~{if (quote) then "--quote" else ""} \
      ~{if defined(random_file) then ("--random-file " +  '"' + random_file + '"') else ""} \
      ~{if defined(range) then ("--range " +  '"' + range + '"') else ""} \
      ~{if (raw) then "--raw" else ""} \
      ~{if defined(referer) then ("--referer " +  '"' + referer + '"') else ""} \
      ~{if defined(remote_header_name) then ("--remote-header-name " +  '"' + remote_header_name + '"') else ""} \
      ~{if (remote_name) then "--remote-name" else ""} \
      ~{if defined(remote_name_all) then ("--remote-name-all " +  '"' + remote_name_all + '"') else ""} \
      ~{if (remote_time) then "--remote-time" else ""} \
      ~{if defined(request) then ("--request " +  '"' + request + '"') else ""} \
      ~{if defined(request_target) then ("--request-target " +  '"' + request_target + '"') else ""} \
      ~{if (resolve) then "--resolve" else ""} \
      ~{if defined(retry) then ("--retry " +  '"' + retry + '"') else ""} \
      ~{if defined(retry_conn_refused) then ("--retry-connrefused " +  '"' + retry_conn_refused + '"') else ""} \
      ~{if defined(retry_delay) then ("--retry-delay " +  '"' + retry_delay + '"') else ""} \
      ~{if defined(retry_max_time) then ("--retry-max-time " +  '"' + retry_max_time + '"') else ""} \
      ~{if (sasl_ir) then "--sasl-ir" else ""} \
      ~{if defined(service_name) then ("--service-name " +  '"' + service_name + '"') else ""} \
      ~{if (show_error) then "--show-error" else ""} \
      ~{if (silent) then "--silent" else ""} \
      ~{if (socks_four) then "--socks4" else ""} \
      ~{if (socks_four_a) then "--socks4a" else ""} \
      ~{if (socks_five) then "--socks5" else ""} \
      ~{if (socks_five_basic) then "--socks5-basic" else ""} \
      ~{if defined(socks_five_gssapi) then ("--socks5-gssapi " +  '"' + socks_five_gssapi + '"') else ""} \
      ~{if defined(socks_five_gssapi_nec) then ("--socks5-gssapi-nec " +  '"' + socks_five_gssapi_nec + '"') else ""} \
      ~{if defined(socks_five_gssapi_service) then ("--socks5-gssapi-service " +  '"' + socks_five_gssapi_service + '"') else ""} \
      ~{if (socks_five_hostname) then "--socks5-hostname" else ""} \
      ~{if defined(speed_limit) then ("--speed-limit " +  '"' + speed_limit + '"') else ""} \
      ~{if defined(speed_time) then ("--speed-time " +  '"' + speed_time + '"') else ""} \
      ~{if (ssl) then "--ssl" else ""} \
      ~{if defined(ssl_allow_beast) then ("--ssl-allow-beast " +  '"' + ssl_allow_beast + '"') else ""} \
      ~{if defined(ssl_no_revoke) then ("--ssl-no-revoke " +  '"' + ssl_no_revoke + '"') else ""} \
      ~{if (ssl_reqd) then "--ssl-reqd" else ""} \
      ~{if (ssl_v_two) then "--sslv2" else ""} \
      ~{if (ssl_v_three) then "--sslv3" else ""} \
      ~{if (stderr) then "--stderr" else ""} \
      ~{if defined(styled_output) then ("--styled-output " +  '"' + styled_output + '"') else ""} \
      ~{if defined(suppress_connect_headers) then ("--suppress-connect-headers " +  '"' + suppress_connect_headers + '"') else ""} \
      ~{if (tcp_fast_open) then "--tcp-fastopen" else ""} \
      ~{if (tcp_no_delay) then "--tcp-nodelay" else ""} \
      ~{if (telnet_option) then "--telnet-option" else ""} \
      ~{if defined(tftp_blksize) then ("--tftp-blksize " +  '"' + tftp_blksize + '"') else ""} \
      ~{if defined(tftp_no_options) then ("--tftp-no-options " +  '"' + tftp_no_options + '"') else ""} \
      ~{if defined(time_cond) then ("--time-cond " +  '"' + time_cond + '"') else ""} \
      ~{if defined(tls_max) then ("--tls-max " +  '"' + tls_max + '"') else ""} \
      ~{if defined(tls_one_three_ciphers) then ("--tls13-ciphers " +  '"' + tls_one_three_ciphers + '"') else ""} \
      ~{if defined(tls_authtype) then ("--tlsauthtype " +  '"' + tls_authtype + '"') else ""} \
      ~{if (tls_password) then "--tlspassword" else ""} \
      ~{if defined(tls_user) then ("--tlsuser " +  '"' + tls_user + '"') else ""} \
      ~{if (tls_v_one) then "--tlsv1" else ""} \
      ~{if (tls_v_one_dot_zero) then "--tlsv1.0" else ""} \
      ~{if (tls_v_one_dot_one) then "--tlsv1.1" else ""} \
      ~{if (tls_v_one_dot_two) then "--tlsv1.2" else ""} \
      ~{if (tls_v_one_dot_three) then "--tlsv1.3" else ""} \
      ~{if (tr_encoding) then "--tr-encoding" else ""} \
      ~{if defined(trace) then ("--trace " +  '"' + trace + '"') else ""} \
      ~{if defined(trace_ascii) then ("--trace-ascii " +  '"' + trace_ascii + '"') else ""} \
      ~{if (trace_time) then "--trace-time" else ""} \
      ~{if defined(unix_socket) then ("--unix-socket " +  '"' + unix_socket + '"') else ""} \
      ~{if defined(upload_file) then ("--upload-file " +  '"' + upload_file + '"') else ""} \
      ~{if defined(url_to_work) then ("--url " +  '"' + url_to_work + '"') else ""} \
      ~{if (use_ascii) then "--use-ascii" else ""} \
      ~{if (user) then "--user" else ""} \
      ~{if defined(user_agent) then ("--user-agent " +  '"' + user_agent + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(write_out) then ("--write-out " +  '"' + write_out + '"') else ""} \
      ~{if (xattr) then "--xattr" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    abstract_unix_socket: "Connect via abstract Unix domain socket"
    any_auth: "Pick any authentication method"
    append: "Append to target file when uploading"
    basic: "Use HTTP Basic Authentication"
    cacert: "CA certificate to verify peer against"
    ca_path: "CA directory to verify peer against"
    cert: "<certificate[:password]> Client certificate file and password"
    cert_status: "Verify the status of the server certificate"
    cert_type: "Certificate file type (DER/PEM/ENG)"
    ciphers: "SSL ciphers to use"
    compressed: "Request compressed response"
    compressed_ssh: "SSH compression"
    config: "Read config from a file"
    connect_timeout: "Maximum time allowed for connection"
    connect_to: "<HOST1:PORT1:HOST2:PORT2> Connect to host"
    continue_at: "Resumed transfer offset"
    cookie: "Send cookies from string/file"
    cookie_jar: "Write cookies to <filename> after operation"
    create_dirs: "Create necessary local directory hierarchy"
    crlf: "Convert LF to CRLF in upload"
    crl_file: "Get a CRL list in PEM format from the given file"
    data: "HTTP POST data"
    data_ascii: "HTTP POST ASCII data"
    data_binary: "HTTP POST binary data"
    data_raw: "HTTP POST data, '@' allowed"
    data_urlencode: "HTTP POST data url encoded"
    delegation: "GSS-API delegation permission"
    digest: "Use HTTP Digest Authentication"
    disable: "Disable .curlrc"
    disable_e_prt: "Inhibit using EPRT or LPRT"
    disable_epsv: "Inhibit using EPSV"
    disallow_username_in_url: "username in url"
    dns_interface: "Interface to use for DNS requests"
    dns_ipv_four_addr: "IPv4 address to use for DNS requests"
    dns_ipv_six_addr: "IPv6 address to use for DNS requests"
    dns_servers: "DNS server addrs to use"
    doh_url: "Resolve host names over DOH"
    dump_header: "Write the received headers to <filename>"
    egd_file: "EGD socket path for random data"
    engine: "Crypto engine to use"
    expect_one_zero_zero_timeout: "How long to wait for 100-continue"
    fail: "Fail silently (no output at all) on HTTP errors"
    fail_early: "Fail on first transfer error, do not continue"
    false_start: "Enable TLS False Start"
    form: "<name=content> Specify multipart MIME data"
    form_string: "<name=string> Specify multipart MIME data"
    ftp_account: "Account data string"
    ftp_alternative_to_user: "String to replace USER [name]"
    ftp_create_dirs: "the remote dirs if not present"
    ftp_method: "Control CWD usage"
    ftp_pasv: "Use PASV/EPSV instead of PORT"
    ftp_port: "Use PORT instead of PASV"
    ftp_pret: "Send PRET before PASV"
    ftp_skip_pasv_ip: "the IP address for PASV"
    ftp_ssl_ccc: "Send CCC after authenticating"
    ftp_ssl_ccc_mode: "Set CCC mode"
    ftp_ssl_control: "SSL/TLS for FTP login, clear for transfer"
    get: "Put the post data in the URL and use GET"
    glob_off: "Disable URL sequences and ranges using {} and []"
    happy_eyeballs_timeout_ms: "How long to wait in milliseconds for IPv6 before trying IPv4"
    ha_proxy_protocol: "HAProxy PROXY protocol v1 header"
    head: "Show document info only"
    header: "Pass custom header(s) to server"
    host_pub_md_five: "Acceptable MD5 hash of the host public key"
    http_one_dot_zero: "Use HTTP 1.0"
    http_one_dot_one: "Use HTTP 1.1"
    http_two: "Use HTTP 2"
    http_two_prior_knowledge: "HTTP 2 without HTTP/1.1 Upgrade"
    ignore_content_length: "the size of the remote resource"
    include: "Include protocol response headers in the output"
    insecure: "Allow insecure server connections when using SSL"
    interface: "Use network INTERFACE (or address)"
    ipv_four: "Resolve names to IPv4 addresses"
    ipv_six: "Resolve names to IPv6 addresses"
    junk_session_cookies: "session cookies read from file"
    keepalive_time: "Interval time for keepalive probes"
    key: "Private key file name"
    key_type: "Private key file type (DER/PEM/ENG)"
    krb: "Enable Kerberos with security <level>"
    libcurl: "Dump libcurl equivalent code of this command line"
    limit_rate: "Limit transfer speed to RATE"
    list_only: "List only mode"
    local_port: "Force use of RANGE for local port numbers"
    location: "Follow redirects"
    location_trusted: ", and send auth to other hosts"
    login_options: "Server login options"
    mail_auth: "Originator address of the original email"
    mail_from: "Mail from this address"
    mail_rcpt: "Mail to this address"
    manual: "Display the full manual"
    max_filesize: "Maximum file size to download"
    max_red_irs: "Maximum number of redirects allowed"
    max_time: "Maximum time allowed for the transfer"
    metalink: "Process given URLs as metalink XML file"
    negotiate: "Use HTTP Negotiate (SPNEGO) authentication"
    netrc: "Must read .netrc for user name and password"
    netrc_file: "Specify FILE for netrc"
    netrc_optional: "either .netrc or URL"
    no_a_lpn: "Disable the ALPN TLS extension"
    no_buffer: "Disable buffering of the output stream"
    no_keepalive: "Disable TCP keepalive on the connection"
    no_npn: "Disable the NPN TLS extension"
    no_session_id: "Disable SSL session-ID reusing"
    no_proxy: "List of hosts which do not use proxy"
    ntlm: "Use HTTP NTLM authentication"
    ntlm_wb: "Use HTTP NTLM authentication with winbind"
    o_auth_two_bearer: "OAuth 2 Bearer Token"
    write_file_stdout: "Write to file instead of stdout"
    pass: "Pass phrase for the private key"
    path_as_is: "in URL path"
    pinned_pubkey: "FILE/HASHES Public key to verify peer against"
    post_three_zero_one: "Do not switch to GET after following a 301"
    post_three_zero_two: "Do not switch to GET after following a 302"
    post_three_zero_three: "Do not switch to GET after following a 303"
    pre_proxy: "[protocol://]host[:port] Use this proxy first"
    proto: "Enable/disable PROTOCOLS"
    proto_default: "Use PROTOCOL for any URL missing a scheme"
    proto_redir: "Enable/disable PROTOCOLS on redirect"
    proxy: "[protocol://]host[:port] Use this proxy"
    proxy_any_auth: "any proxy authentication method"
    proxy_basic: "Use Basic authentication on the proxy"
    proxy_cacert: "CA certificate to verify peer against for proxy"
    proxy_ca_path: "CA directory to verify peer against for proxy"
    proxy_cert: "<cert[:passwd]> Set client certificate for proxy"
    proxy_cert_type: "Client certificate type for HTTPS proxy"
    proxy_ciphers: "SSL ciphers to use for proxy"
    proxy_crl_file: "Set a CRL list for proxy"
    proxy_digest: "Use Digest authentication on the proxy"
    proxy_header: "Pass custom header(s) to proxy"
    proxy_insecure: "HTTPS proxy connections without verifying the proxy"
    proxy_key: "Private key for HTTPS proxy"
    proxy_key_type: "Private key file type for proxy"
    proxy_negotiate: "HTTP Negotiate (SPNEGO) authentication on the proxy"
    proxy_ntlm: "Use NTLM authentication on the proxy"
    proxy_pass: "Pass phrase for the private key for HTTPS proxy"
    proxy_pinned_pubkey: "FILE/HASHES public key to verify proxy with"
    proxy_service_name: "SPNEGO proxy service name"
    proxy_ssl_allow_beast: "security flaw for interop for HTTPS proxy"
    proxy_tls_one_three_ciphers: "TLS 1.3 proxy cipher suites"
    proxy_tls_authtype: "TLS authentication type for HTTPS proxy"
    proxy_tls_password: "TLS password for HTTPS proxy"
    proxy_tls_user: "TLS username for HTTPS proxy"
    proxy_tls_v_one: "Use TLSv1 for HTTPS proxy"
    proxy_user: "<user:password> Proxy user and password"
    proxy_one_dot_zero: "<host[:port]> Use HTTP/1.0 proxy on given port"
    proxy_tunnel: "Operate through an HTTP proxy tunnel (using CONNECT)"
    pubkey: "SSH Public key file name"
    quote: "Send command(s) to server before transfer"
    random_file: "File for reading random data from"
    range: "Retrieve only the bytes within RANGE"
    raw: "Do HTTP \\\"raw\\\"; no transfer decoding"
    referer: "Referrer URL"
    remote_header_name: "the header-provided filename"
    remote_name: "Write output to a file named as the remote file"
    remote_name_all: "the remote file name for all URLs"
    remote_time: "Set the remote file's time on the local output"
    request: "Specify request command to use"
    request_target: "the target for this request"
    resolve: "<host:port:address[,address]...> Resolve the host+port to this address"
    retry: "Retry request if transient problems occur"
    retry_conn_refused: "on connection refused (use with --retry)"
    retry_delay: "Wait time between retries"
    retry_max_time: "Retry only within this period"
    sasl_ir: "Enable initial response in SASL authentication"
    service_name: "SPNEGO service name"
    show_error: "Show error even when -s is used"
    silent: "Silent mode"
    socks_four: "<host[:port]> SOCKS4 proxy on given host + port"
    socks_four_a: "<host[:port]> SOCKS4a proxy on given host + port"
    socks_five: "<host[:port]> SOCKS5 proxy on given host + port"
    socks_five_basic: "Enable username/password auth for SOCKS5 proxies"
    socks_five_gssapi: "GSS-API auth for SOCKS5 proxies"
    socks_five_gssapi_nec: "with NEC SOCKS5 server"
    socks_five_gssapi_service: "SOCKS5 proxy service name for GSS-API"
    socks_five_hostname: "<host[:port]> SOCKS5 proxy, pass host name to proxy"
    speed_limit: "Stop transfers slower than this"
    speed_time: "Trigger 'speed-limit' abort after this time"
    ssl: "Try SSL/TLS"
    ssl_allow_beast: "security flaw to improve interop"
    ssl_no_revoke: "cert revocation checks (WinSSL)"
    ssl_reqd: "Require SSL/TLS"
    ssl_v_two: "Use SSLv2"
    ssl_v_three: "Use SSLv3"
    stderr: "Where to redirect stderr"
    styled_output: "styled output for HTTP headers"
    suppress_connect_headers: "proxy CONNECT response headers"
    tcp_fast_open: "Use TCP Fast Open"
    tcp_no_delay: "Use the TCP_NODELAY option"
    telnet_option: "<opt=val> Set telnet option"
    tftp_blksize: "Set TFTP BLKSIZE option"
    tftp_no_options: "not send any TFTP options"
    time_cond: "Transfer based on a time condition"
    tls_max: "Use TLSv1.0 or greater"
    tls_one_three_ciphers: "TLS 1.3 cipher suites to use"
    tls_authtype: "TLS authentication type"
    tls_password: "TLS password"
    tls_user: "TLS user name"
    tls_v_one: "Use TLSv1.0 or greater"
    tls_v_one_dot_zero: "Use TLSv1.0 or greater"
    tls_v_one_dot_one: "Use TLSv1.1 or greater"
    tls_v_one_dot_two: "Use TLSv1.2 or greater"
    tls_v_one_dot_three: "Use TLSv1.3 or greater"
    tr_encoding: "Request compressed transfer encoding"
    trace: "Write a debug trace to FILE"
    trace_ascii: "Like --trace, but without hex output"
    trace_time: "Add time stamps to trace/verbose output"
    unix_socket: "Connect through this Unix domain socket"
    upload_file: "Transfer local FILE to destination"
    url_to_work: "URL to work with"
    use_ascii: "Use ASCII/text transfer"
    user: "<user:password> Server user and password"
    user_agent: "Send User-Agent <name> to server"
    verbose: "Make the operation more talkative"
    write_out: "Use output FORMAT after completion"
    xattr: "Store metadata in extended file attributes"
    options_dot_dot_dot: ""
    var_216: ""
  }
  output {
    File out_stdout = stdout()
    File out_remote_name = "${in_remote_name}"
    File out_remote_time = "${in_remote_time}"
  }
}