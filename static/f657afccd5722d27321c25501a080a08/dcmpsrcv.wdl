version 1.0

task Dcmpsrcv {
  input {
    Boolean qQ
    Boolean vV
    Boolean dD
    Boolean logLogLevel
    Boolean logLogConfig
    Boolean tT
    String? configConfigFile
    String? receiverReceiverId
  }
  command <<<
    dcmpsrcv \
      ~{configConfigFile} \
      ~{true="-q" false="" qQ} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="--log-level" false="" logLogLevel} \
      ~{true="--log-config" false="" logLogConfig} \
      ~{true="-t" false="" tT} \
      ~{receiverReceiverId}
  >>>
}