class: CommandLineTool
id: wsdl.cwl
inputs:
- id: in_domain
  doc: :domain           Domain of username for server authentication.
  type: boolean?
  inputBinding:
    prefix: -domain
- id: in_language
  doc: ":language       Language of generated code. Allowed CS (default)\nand VB.\
    \ You can also specify the fully qualified\nname of a class that implements the\n\
    System.CodeDom.Compiler.CodeDomProvider Class."
  type: boolean?
  inputBinding:
    prefix: -language
- id: in_namespace
  doc: ":ns            The namespace of the generated code, default\nnamespace if\
    \ none."
  type: boolean?
  inputBinding:
    prefix: -namespace
- id: in_nologo
  doc: Surpress the startup logo.
  type: boolean?
  inputBinding:
    prefix: -nologo
- id: in_out
  doc: :filename            The target file for generated code.
  type: boolean?
  inputBinding:
    prefix: -out
- id: in_password
  doc: :pwd            Password used to contact the server.
  type: boolean?
  inputBinding:
    prefix: -password
- id: in_protocol
  doc: ":protocol           Protocol to implement. Allowed: Soap (default),\nHttpGet\
    \ or HttpPost."
  type: boolean?
  inputBinding:
    prefix: -protocol
- id: in_fields
  doc: Generate fields instead of properties in data
  type: boolean?
  inputBinding:
    prefix: -fields
- id: in_username
  doc: :username       Username used to contact the server.
  type: boolean?
  inputBinding:
    prefix: -username
- id: in_proxy
  doc: :url                   Address of the proxy.
  type: boolean?
  inputBinding:
    prefix: -proxy
- id: in_proxy_username
  doc: :username Username used to contact the proxy.
  type: boolean?
  inputBinding:
    prefix: -proxyusername
- id: in_proxy_password
  doc: :pwd      Password used to contact the proxy.
  type: boolean?
  inputBinding:
    prefix: -proxypassword
- id: in_proxy_domain
  doc: :domain     Domain of username for proxy authentication.
  type: boolean?
  inputBinding:
    prefix: -proxydomain
- id: in_app_setting_url_key
  doc: ":key Configuration key that contains the default\nurl for the generated WS\
    \ proxy."
  type: boolean?
  inputBinding:
    prefix: -appsettingurlkey
- id: in_app_setting_baseurl
  doc: ":url Base url to use when constructing the\nservice url."
  type: boolean?
  inputBinding:
    prefix: -appsettingbaseurl
- id: in_sample
  doc: :[binding/]operation  Display a sample SOAP request and response.
  type: boolean?
  inputBinding:
    prefix: -sample
- id: in_classes_dot
  doc: -server                      Generate server instead of client proxy code.
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
- wsdl
