#!/usr/bin/env cwl-runner

baseCommand:
- eoulsan.sh
class: CommandLineTool
cwlVersion: v1.0
id: eoulsan.sh
inputs:
- doc: display information about this software
  id: about
  inputBinding:
    prefix: -about
  type: boolean
- doc: configuration file to use
  id: conf
  inputBinding:
    prefix: -conf
  type: File
- doc: JAVA_HOME path
  id: j
  inputBinding:
    prefix: -j
  type: File
- doc: JVM arguments (-server by default)
  id: j
  inputBinding:
    prefix: -J
  type: string
- doc: display information about the license of this software
  id: license
  inputBinding:
    prefix: -license
  type: boolean
- doc: external log file
  id: log
  inputBinding:
    prefix: -log
  type: File
- doc: log level
  id: loglevel
  inputBinding:
    prefix: -loglevel
  type: string
- doc: maximal memory usage for JVM in MB (4096 by default)
  id: m
  inputBinding:
    prefix: -m
  type: long
- doc: additional classpath for eoulsan plugins
  id: p
  inputBinding:
    prefix: -p
  type: string
- doc: <property=value>   set a configuration setting. This option can be used several
    times
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: show version of the software
  id: version
  inputBinding:
    prefix: -version
  type: boolean
- doc: JVM working directory
  id: w
  inputBinding:
    prefix: -w
  type: File
- doc: create a design file from a list of files.
  id: create_design
  inputBinding:
    prefix: '- createdesign'
  type: boolean
- doc: show information about formats configuration.
  id: formats
  inputBinding:
    prefix: '- formats'
  type: boolean
- doc: execute Eoulsan on local hadoop cluster.
  id: had_oop_exec
  inputBinding:
    prefix: '- hadoopexec'
  type: boolean
- doc: upload data on Amazon S3.
  id: s3_upload
  inputBinding:
    prefix: '- s3upload'
  type: boolean
- doc: integration test Eoulsan version.
  id: it
  inputBinding:
    prefix: '- it'
  type: boolean
- doc: show information about modules configuration.
  id: modules
  inputBinding:
    prefix: '- modules'
  type: boolean
- doc: execute eoulsan on Amazon Elastic MapReduce service.
  id: emr_exec
  inputBinding:
    prefix: '- emrexec'
  type: boolean
- doc: execute Eoulsan on a cluster.
  id: cluster_exec
  inputBinding:
    prefix: '- clusterexec'
  type: boolean
- doc: create a jar file for hadoop with all dependencies include.
  id: create_had_oop_jar
  inputBinding:
    prefix: '- createhadoopjar'
  type: boolean
- doc: execute Eoulsan in local mode.
  id: exec
  inputBinding:
    prefix: '- exec'
  type: boolean
- doc: show information about info configuration.
  id: info
  inputBinding:
    prefix: '- info'
  type: boolean
