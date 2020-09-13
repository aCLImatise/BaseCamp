class: CommandLineTool
id: ../../../nextflow.bak.cwl
inputs:
- id: in_use_specified_files
  doc: Use the specified configuration file(s) overriding any defaults
  type: boolean
  inputBinding:
    prefix: -C
- id: in_set_jvm_properties
  doc: Set JVM properties
  type: boolean
  inputBinding:
    prefix: -D
- id: in_bg
  doc: Execute nextflow in background
  type: boolean
  inputBinding:
    prefix: -bg
- id: in_config
  doc: Add the specified file to configuration set
  type: boolean
  inputBinding:
    prefix: -config
- id: in_docker_ize
  doc: Launch nextflow via Docker (experimental)
  type: boolean
  inputBinding:
    prefix: -dockerize
- id: in_log
  doc: Set nextflow log file path
  type: boolean
  inputBinding:
    prefix: -log
- id: in_quiet
  doc: Do not print information messages
  type: boolean
  inputBinding:
    prefix: -quiet
- id: in_syslog
  doc: Send logs to syslog server (eg. localhost:514)
  type: boolean
  inputBinding:
    prefix: -syslog
- id: in_version
  doc: Print the program version
  type: boolean
  inputBinding:
    prefix: -version
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nextflow.bak
