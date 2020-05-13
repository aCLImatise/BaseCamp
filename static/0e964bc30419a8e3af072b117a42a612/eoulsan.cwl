class: CommandLineTool
id: eoulsan.sh.cwl
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
- id: j
  doc: JAVA_HOME path
  type: File
  inputBinding:
    prefix: -j
- id: j
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
- id: m
  doc: maximal memory usage for JVM in MB (4096 by default)
  type: long
  inputBinding:
    prefix: -m
- id: p
  doc: additional classpath for eoulsan plugins
  type: string
  inputBinding:
    prefix: -p
- id: s
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
- id: w
  doc: JVM working directory
  type: File
  inputBinding:
    prefix: -w
- id: create_design
  doc: create a design file from a list of files.
  type: boolean
  inputBinding:
    prefix: '- createdesign'
- id: formats
  doc: show information about formats configuration.
  type: boolean
  inputBinding:
    prefix: '- formats'
- id: had_oop_exec
  doc: execute Eoulsan on local hadoop cluster.
  type: boolean
  inputBinding:
    prefix: '- hadoopexec'
- id: s3_upload
  doc: upload data on Amazon S3.
  type: boolean
  inputBinding:
    prefix: '- s3upload'
- id: it
  doc: integration test Eoulsan version.
  type: boolean
  inputBinding:
    prefix: '- it'
- id: modules
  doc: show information about modules configuration.
  type: boolean
  inputBinding:
    prefix: '- modules'
- id: emr_exec
  doc: execute eoulsan on Amazon Elastic MapReduce service.
  type: boolean
  inputBinding:
    prefix: '- emrexec'
- id: cluster_exec
  doc: execute Eoulsan on a cluster.
  type: boolean
  inputBinding:
    prefix: '- clusterexec'
- id: create_had_oop_jar
  doc: create a jar file for hadoop with all dependencies include.
  type: boolean
  inputBinding:
    prefix: '- createhadoopjar'
- id: exec
  doc: execute Eoulsan in local mode.
  type: boolean
  inputBinding:
    prefix: '- exec'
- id: info
  doc: show information about info configuration.
  type: boolean
  inputBinding:
    prefix: '- info'
outputs: []
cwlVersion: v1.1
baseCommand:
- eoulsan.sh
