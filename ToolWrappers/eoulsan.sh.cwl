class: CommandLineTool
id: eoulsan.sh.cwl
inputs:
- id: in_about
  doc: display information about this software
  type: boolean
  inputBinding:
    prefix: -about
- id: in_conf
  doc: configuration file to use
  type: File
  inputBinding:
    prefix: -conf
- id: in_javahome_path
  doc: JAVA_HOME path
  type: File
  inputBinding:
    prefix: -j
- id: in_jvm_arguments_server
  doc: JVM arguments (-server by default)
  type: string
  inputBinding:
    prefix: -J
- id: in_license
  doc: display information about the license of this
  type: boolean
  inputBinding:
    prefix: -license
- id: in_loglevel
  doc: log level
  type: string
  inputBinding:
    prefix: -loglevel
- id: in_maximal_memory_usage
  doc: "maximal memory usage for JVM in MB (4096 by\ndefault)"
  type: long
  inputBinding:
    prefix: -m
- id: in_additional_classpath_eoulsan
  doc: additional classpath for eoulsan plugins
  type: string
  inputBinding:
    prefix: -p
- id: in_propertyvalue_set_configuration
  doc: "<property=value>   set a configuration setting. This option can be\nused several\
    \ times"
  type: boolean
  inputBinding:
    prefix: -s
- id: in_version
  doc: show version of the software
  type: boolean
  inputBinding:
    prefix: -version
- id: in_jvm_working_directory
  doc: JVM working directory
  type: File
  inputBinding:
    prefix: -w
- id: in_software
  doc: -log <file>           external log file
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- eoulsan.sh
