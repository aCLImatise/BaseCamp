class: CommandLineTool
id: mono_configuration_crypto.cwl
inputs:
- id: in_verbose
  doc: "Show verbose information (including exception\nstacktraces)"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_machine
  doc: Use machine (global) store for all the key actions
  type: boolean
  inputBinding:
    prefix: --machine
- id: in_local
  doc: Use local (user) store for all the key actions [*]
  type: boolean
  inputBinding:
    prefix: --local
- id: in_list
  doc: List all the key container names in the store
  type: boolean
  inputBinding:
    prefix: --list
- id: in_create
  doc: Creates an RSA public/private key pair
  type: boolean
  inputBinding:
    prefix: --create
- id: in_import
  doc: Import key to a container
  type: boolean
  inputBinding:
    prefix: --import
- id: in_export
  doc: Export key from a container
  type: boolean
  inputBinding:
    prefix: --export
- id: in_remove
  doc: Remove a container
  type: boolean
  inputBinding:
    prefix: --remove
- id: in_file
  doc: File name for import or export operations
  type: File
  inputBinding:
    prefix: --file
- id: in_config_file
  doc: Config file name (not path) [Web.config]
  type: File
  inputBinding:
    prefix: --config-file
- id: in_name
  doc: Container name [MonoFrameworkConfigurationKey]
  type: string
  inputBinding:
    prefix: --name
- id: in_size
  doc: Key size [1024]
  type: long
  inputBinding:
    prefix: --size
- id: in_path
  doc: Application physical path [.]
  type: File
  inputBinding:
    prefix: --path
- id: in_decrypt
  doc: Decrypt configuration section
  type: string
  inputBinding:
    prefix: --decrypt
- id: in_encrypt
  doc: Encrypt configuration section
  type: string
  inputBinding:
    prefix: --encrypt
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mono-configuration-crypto
