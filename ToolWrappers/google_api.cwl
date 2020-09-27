class: CommandLineTool
id: google_api.cwl
inputs:
- id: in_scope
  doc: Set the OAuth scope
  type: string
  inputBinding:
    prefix: --scope
- id: in_client_id
  doc: Set the OAuth client id or key
  type: string
  inputBinding:
    prefix: --client-id
- id: in_client_secret
  doc: Set the OAuth client secret
  type: string
  inputBinding:
    prefix: --client-secret
- id: in_api
  doc: Perform discovery on API
  type: string
  inputBinding:
    prefix: --api
- id: in_api_version
  doc: Select api version
  type: string
  inputBinding:
    prefix: --api-version
- id: in_content_type
  doc: Content-Type for request
  type: string
  inputBinding:
    prefix: --content-type
- id: in_uri
  doc: Sets the URI to perform a request against
  type: string
  inputBinding:
    prefix: --uri
- id: in_discovery_uri
  doc: Sets the URI to perform discovery
  type: string
  inputBinding:
    prefix: --discovery-uri
- id: in_method
  doc: Sets the HTTP method to use for the request
  type: string
  inputBinding:
    prefix: --method
- id: in_request_or_id
  doc: Sets the email address of the requestor
  type: string
  inputBinding:
    prefix: --requestor-id
- id: in_verbose
  doc: Run verbosely
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_o_auth_two_login
  doc: Log a user into an API with OAuth 2.0
  type: long
  inputBinding:
    position: 0
- id: in_list
  doc: List the methods available for an API
  type: string
  inputBinding:
    position: 1
- id: in_execute
  doc: Execute a method on the API
  type: string
  inputBinding:
    position: 2
- id: in_irb
  doc: Start an interactive client session
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- google-api
