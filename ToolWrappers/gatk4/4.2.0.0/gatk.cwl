class: CommandLineTool
id: gatk.cwl
inputs:
- id: in_g_atk_config_file
  doc: PATH/TO/GATK/PROPERTIES/FILE
  type: boolean?
  inputBinding:
    prefix: --gatk-config-file
- id: in_spark_runner
  doc: "controls how spark tools are run\nvalid targets are:\nLOCAL:      run using\
    \ the in-memory spark runner\nSPARK:      run using spark-submit on an existing\
    \ cluster\n--spark-master must be specified\n--spark-submit-command may be specified\
    \ to control the Spark submit command\narguments to spark-submit may optionally\
    \ be specified after --\nGCS:        run using Google cloud dataproc\ncommands\
    \ after the -- will be passed to dataproc\n--cluster <your-cluster> must be specified\
    \ after the --\nspark properties and some common spark-submit parameters will\
    \ be translated\nto dataproc equivalents"
  type: string?
  inputBinding:
    prefix: --spark-runner
- id: in_dry_run
  doc: may be specified to output the generated command line without running it
  type: boolean?
  inputBinding:
    prefix: --dry-run
- id: in_java_options
  doc: "'OPTION1[ OPTION2=Y ... ]'   optional - pass the given string of options to\
    \ the\njava JVM at runtime.\nJava options MUST be passed inside a single string\
    \ with space-separated values."
  type: boolean?
  inputBinding:
    prefix: --java-options
- id: in_debug_port
  doc: "sets up a Java VM debug agent to listen to debugger connections on a\nparticular\
    \ port number. This in turn will add the necessary java VM arguments\nso that\
    \ you don't need to explicitly indicate these using --java-options."
  type: long?
  inputBinding:
    prefix: --debug-port
- id: in_debug_suspend
  doc: "sets the Java VM debug agent up so that the run get immediatelly suspended\n\
    waiting for a debugger to connect. By default the port number is 5005 but\ncan\
    \ be customized using --debug-port\n"
  type: boolean?
  inputBinding:
    prefix: --debug-suspend
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gatk4:4.2.0.0--0
cwlVersion: v1.1
baseCommand:
- gatk
