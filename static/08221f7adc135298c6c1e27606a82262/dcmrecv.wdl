version 1.0

task Dcmrecv {
  input {
    Boolean xfXf
    Boolean aeAeTitle
    Boolean useUseCalledAeTitle
    Boolean taTa
    Boolean tdTd
    Boolean maxMaxPdu
    Boolean disableDisableHostLookup
    Boolean odOd
    Boolean feFe
    Boolean ignoreIgnore
    String? portPort
  }
  command <<<
    dcmrecv \
      ~{portPort} \
      ~{true="-xf" false="" xfXf} \
      ~{true="--aetitle" false="" aeAeTitle} \
      ~{true="--use-called-aetitle" false="" useUseCalledAeTitle} \
      ~{true="-ta" false="" taTa} \
      ~{true="-td" false="" tdTd} \
      ~{true="--max-pdu" false="" maxMaxPdu} \
      ~{true="--disable-host-lookup" false="" disableDisableHostLookup} \
      ~{true="-od" false="" odOd} \
      ~{true="-fe" false="" feFe} \
      ~{true="--ignore" false="" ignoreIgnore}
  >>>
}