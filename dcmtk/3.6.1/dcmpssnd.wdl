version 1.0

task Dcmpssnd {
  input {
    Boolean qQ
    Boolean vV
    Boolean dD
    Boolean logLogLevel
    Boolean logLogConfig
    String? configConfigFile
    String? targetTarget
    String? studyStudy
    String? seriesSeries
    String? instanceInstance
  }
  command <<<
    dcmpssnd \
      ~{configConfigFile} \
      ~{true="-q" false="" qQ} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="--log-level" false="" logLogLevel} \
      ~{true="--log-config" false="" logLogConfig} \
      ~{targetTarget} \
      ~{studyStudy} \
      ~{seriesSeries} \
      ~{instanceInstance}
  >>>
}