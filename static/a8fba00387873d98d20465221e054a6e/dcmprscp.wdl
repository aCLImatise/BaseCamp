version 1.0

task Dcmprscp {
  input {
    Boolean qQ
    Boolean vV
    Boolean dD
    Boolean logLogLevel
    Boolean logLogConfig
    Boolean lL
  }
  command <<<
    dcmprscp \
      ~{true="-q" false="" qQ} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="--log-level" false="" logLogLevel} \
      ~{true="--log-config" false="" logLogConfig} \
      ~{true="-l" false="" lL}
  >>>
}