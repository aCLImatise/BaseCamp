class: CommandLineTool
id: lwp_request.cwl
inputs:
- id: in_use_method_request
  doc: use method for the request (default is 'GET')
  type: string?
  inputBinding:
    prefix: -m
- id: in_make_request_believes
  doc: make request even if lwp-request believes method is illegal
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_use_specified_url
  doc: Use the specified URL as base
  type: string?
  inputBinding:
    prefix: -b
- id: in_set_timeout_value
  doc: Set timeout value
  type: string?
  inputBinding:
    prefix: -t
- id: in_set_ifmodifiedsince_header
  doc: Set the If-Modified-Since header on the request
  type: string?
  inputBinding:
    prefix: -i
- id: in_use_contenttype_checkin
  doc: use this content-type for POST, PUT, CHECKIN
  type: string?
  inputBinding:
    prefix: -c
- id: in_use_text_mode
  doc: Use text mode for content I/O
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_use_this_proxy
  doc: use this as a proxy
  type: string?
  inputBinding:
    prefix: -p
- id: in_load_proxy_settings
  doc: don't load proxy settings from environment
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_send_http_header
  doc: send this HTTP header (you can specify several)
  type: string?
  inputBinding:
    prefix: -H
- id: in_passwordprovide_credentials_basic
  doc: ":<password>\nprovide credentials for basic authentication"
  type: string?
  inputBinding:
    prefix: -C
- id: in_display_method_url
  doc: Display method and URL before any response
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_display_request_headers
  doc: Display request headers (implies -u)
  type: boolean?
  inputBinding:
    prefix: -U
- id: in_display_response_status_code
  doc: Display response status code
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_display_response_status_chain
  doc: Display response status chain (implies -u)
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_display_response_headers
  doc: Display response headers (implies -s)
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_display_whole_chain
  doc: Display whole chain of headers (implies -S and -U)
  type: boolean?
  inputBinding:
    prefix: -E
- id: in_do_display_content
  doc: Do not display content
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_process_html_content
  doc: Process HTML content in various ways
  type: string?
  inputBinding:
    prefix: -o
- id: in_show_program_version
  doc: Show program version
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
- id: in_url
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- lwp-request
