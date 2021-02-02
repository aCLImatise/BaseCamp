class: CommandLineTool
id: disco.cwl
inputs:
- id: in_nologo
  doc: Supress the startup logo
  type: boolean
  inputBinding:
    prefix: -nologo
- id: in_no_save
  doc: "Do not save the discovered documents to disk.\nThe default is to save the\
    \ documents."
  type: boolean
  inputBinding:
    prefix: -nosave
- id: in_out
  doc: ":directory     The directory where to save the discovered documents.\nBy default,\
    \ documents are saved in the current\ndirectory."
  type: boolean
  inputBinding:
    prefix: -out
- id: in_username
  doc: :username
  type: boolean
  inputBinding:
    prefix: -username
- id: in_password
  doc: :password
  type: boolean
  inputBinding:
    prefix: -password
- id: in_domain
  doc: :domain     The credentials to use when connecting to the server.
  type: boolean
  inputBinding:
    prefix: -domain
- id: in_proxy
  doc: :url            The url of the proxy server to use for http requests.
  type: boolean
  inputBinding:
    prefix: -proxy
- id: in_proxy_username
  doc: :name
  type: boolean
  inputBinding:
    prefix: -proxyusername
- id: in_proxy_password
  doc: :pwd
  type: boolean
  inputBinding:
    prefix: -proxypassword
- id: in_proxy_domin
  doc: :domain    The credentials to use when connection to the proxy.
  type: boolean
  inputBinding:
    prefix: -proxydomin
- id: in_url
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- disco
