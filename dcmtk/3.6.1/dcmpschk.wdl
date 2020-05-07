version 1.0

task Dcmpschk {
  input {
    Boolean qQ
    Boolean vV
    Boolean dD
    Boolean logLogLevel
    Boolean logLogConfig
    String? dcmDcmFileIn
  }
  command <<<
    dcmpschk \
      ~{dcmDcmFileIn} \
      ~{true="-q" false="" qQ} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="--log-level" false="" logLogLevel} \
      ~{true="--log-config" false="" logLogConfig}
  >>>
}