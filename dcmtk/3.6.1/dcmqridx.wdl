version 1.0

task Dcmqridx {
  input {
    Boolean qQ
    Boolean vV
    Boolean dD
    Boolean logLogLevel
    Boolean logLogConfig
    Boolean pP
    Boolean nN
    String? indexIndexOut
    String? dcmDcmFileIn
  }
  command <<<
    dcmqridx \
      ~{indexIndexOut} \
      ~{true="-q" false="" qQ} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="--log-level" false="" logLogLevel} \
      ~{true="--log-config" false="" logLogConfig} \
      ~{true="-p" false="" pP} \
      ~{true="-n" false="" nN} \
      ~{dcmDcmFileIn}
  >>>
}