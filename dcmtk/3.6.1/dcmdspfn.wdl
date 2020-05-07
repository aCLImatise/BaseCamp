version 1.0

task Dcmdspfn {
  input {
    Boolean qQ
    Boolean vV
    Boolean dD
    Boolean logLogLevel
    Boolean logLogConfig
  }
  command <<<
    dcmdspfn \
      ~{true="-q" false="" qQ} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="--log-level" false="" logLogLevel} \
      ~{true="--log-config" false="" logLogConfig}
  >>>
}