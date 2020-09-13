version 1.0

task Lwprequest {
  input {
    String? use_method_request
    Boolean? make_request_believes
    String? use_specified_url
    String? set_timeout_value
    String? set_ifmodifiedsince_header
    String? use_contenttype_post
    Boolean? use_text_mode
    String? use_this_proxy
    Boolean? load_proxy_settings
    String? send_http_header
    String? passwordprovide_credentials_basic
    Boolean? display_method_url
    Boolean? display_request_headers
    Boolean? display_response_code
    Boolean? display_response_status
    Boolean? display_response_headers
    Boolean? display_whole_chain
    Boolean? do_display_content
    String? process_html_content
    Boolean? show_program_version
    Boolean? options
    String url
  }
  command <<<
    lwp_request \
      ~{url} \
      ~{if defined(use_method_request) then ("-m " +  '"' + use_method_request + '"') else ""} \
      ~{if (make_request_believes) then "-f" else ""} \
      ~{if defined(use_specified_url) then ("-b " +  '"' + use_specified_url + '"') else ""} \
      ~{if defined(set_timeout_value) then ("-t " +  '"' + set_timeout_value + '"') else ""} \
      ~{if defined(set_ifmodifiedsince_header) then ("-i " +  '"' + set_ifmodifiedsince_header + '"') else ""} \
      ~{if defined(use_contenttype_post) then ("-c " +  '"' + use_contenttype_post + '"') else ""} \
      ~{if (use_text_mode) then "-a" else ""} \
      ~{if defined(use_this_proxy) then ("-p " +  '"' + use_this_proxy + '"') else ""} \
      ~{if (load_proxy_settings) then "-P" else ""} \
      ~{if defined(send_http_header) then ("-H " +  '"' + send_http_header + '"') else ""} \
      ~{if defined(passwordprovide_credentials_basic) then ("-C " +  '"' + passwordprovide_credentials_basic + '"') else ""} \
      ~{if (display_method_url) then "-u" else ""} \
      ~{if (display_request_headers) then "-U" else ""} \
      ~{if (display_response_code) then "-s" else ""} \
      ~{if (display_response_status) then "-S" else ""} \
      ~{if (display_response_headers) then "-e" else ""} \
      ~{if (display_whole_chain) then "-E" else ""} \
      ~{if (do_display_content) then "-d" else ""} \
      ~{if defined(process_html_content) then ("-o " +  '"' + process_html_content + '"') else ""} \
      ~{if (show_program_version) then "-v" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    use_method_request: "use method for the request (default is 'GET')"
    make_request_believes: "make request even if lwp-request believes method is illegal"
    use_specified_url: "Use the specified URL as base"
    set_timeout_value: "Set timeout value"
    set_ifmodifiedsince_header: "Set the If-Modified-Since header on the request"
    use_contenttype_post: "use this content-type for POST, PUT, CHECKIN"
    use_text_mode: "Use text mode for content I/O"
    use_this_proxy: "use this as a proxy"
    load_proxy_settings: "don't load proxy settings from environment"
    send_http_header: "send this HTTP header (you can specify several)"
    passwordprovide_credentials_basic: ":<password>\\nprovide credentials for basic authentication"
    display_method_url: "Display method and URL before any response"
    display_request_headers: "Display request headers (implies -u)"
    display_response_code: "Display response status code"
    display_response_status: "Display response status chain (implies -u)"
    display_response_headers: "Display response headers (implies -s)"
    display_whole_chain: "Display whole chain of headers (implies -S and -U)"
    do_display_content: "Do not display content"
    process_html_content: "Process HTML content in various ways"
    show_program_version: "Show program version"
    options: ""
    url: ""
  }
  output {
    File out_stdout = stdout()
  }
}