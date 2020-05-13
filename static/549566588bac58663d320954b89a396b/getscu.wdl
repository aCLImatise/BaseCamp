version 1.0

task Getscu {
  input {
    Boolean kK
    Boolean pP
    Boolean sS
    Boolean oO
    Boolean aeAeTitle
    Boolean callCall
    Boolean xX
    Boolean xeXe
    Boolean xbXb
    Boolean xdXd
    Boolean xiXi
    Boolean toTo
    Boolean taTa
    Boolean tdTd
    Boolean maxMaxPdu
    Boolean repeatRepeat
    Boolean abortAbort
    Boolean odOd
    Boolean ignoreIgnore
    String? peerPeer
    String? portPort
    String? dcmDcmFileIn
  }
  command <<<
    getscu \
      ~{peerPeer} \
      ~{true="-k" false="" kK} \
      ~{true="-P" false="" pP} \
      ~{true="-S" false="" sS} \
      ~{true="-O" false="" oO} \
      ~{true="--aetitle" false="" aeAeTitle} \
      ~{true="--call" false="" callCall} \
      ~{true="-x" false="" xX} \
      ~{true="-xe" false="" xeXe} \
      ~{true="-xb" false="" xbXb} \
      ~{true="-xd" false="" xdXd} \
      ~{true="-xi" false="" xiXi} \
      ~{true="-to" false="" toTo} \
      ~{true="-ta" false="" taTa} \
      ~{true="-td" false="" tdTd} \
      ~{true="--max-pdu" false="" maxMaxPdu} \
      ~{true="--repeat" false="" repeatRepeat} \
      ~{true="--abort" false="" abortAbort} \
      ~{true="-od" false="" odOd} \
      ~{true="--ignore" false="" ignoreIgnore} \
      ~{portPort} \
      ~{dcmDcmFileIn}
  >>>
}