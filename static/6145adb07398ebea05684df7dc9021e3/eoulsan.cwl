class: CommandLineTool
id: ../../../eoulsan.sh.cwl
inputs:
- id: about
  doc: display information about this software
  type: boolean
  inputBinding:
    prefix: -about
- id: conf
  doc: configuration file to use
  type: File
  inputBinding:
    prefix: -conf
- id: javahome_path
  doc: JAVA_HOME path
  type: File
  inputBinding:
    prefix: -j
- id: jvm_arguments_server
  doc: JVM arguments (-server by default)
  type: string
  inputBinding:
    prefix: -J
- id: license
  doc: display information about the license of this software
  type: boolean
  inputBinding:
    prefix: -license
- id: log
  doc: external log file
  type: File
  inputBinding:
    prefix: -log
- id: loglevel
  doc: log level
  type: string
  inputBinding:
    prefix: -loglevel
- id: maximal_memory_usage
  doc: maximal memory usage for JVM in MB (4096 by default)
  type: long
  inputBinding:
    prefix: -m
- id: additional_classpath_eoulsan
  doc: additional classpath for eoulsan plugins
  type: string
  inputBinding:
    prefix: -p
- id: propertyvalue_set_configuration
  doc: <property=value>   set a configuration setting. This option can be used several
    times
  type: boolean
  inputBinding:
    prefix: -s
- id: version
  doc: show version of the software
  type: boolean
  inputBinding:
    prefix: -version
- id: jvm_working_directory
  doc: JVM working directory
  type: File
  inputBinding:
    prefix: -w
- id: action
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- eoulsan.sh
