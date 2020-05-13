version 1.0

task Dcmqrti {
  input {
    Boolean qQ
    Boolean vV
    Boolean dD
    Boolean llLl
    Boolean lcLc
    Boolean cC
    Boolean toTo
    Boolean taTa
    Boolean tdTd
    Boolean xiXi
    Boolean aeAeTitle
    Boolean maxMaxPdu
    Boolean uU
    Boolean remoteRemote
    String? peerPeer
  }
  command <<<
    dcmqrti \
      ~{peerPeer} \
      ~{true="-q" false="" qQ} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="-ll" false="" llLl} \
      ~{true="-lc" false="" lcLc} \
      ~{true="-c" false="" cC} \
      ~{true="-to" false="" toTo} \
      ~{true="-ta" false="" taTa} \
      ~{true="-td" false="" tdTd} \
      ~{true="-xi" false="" xiXi} \
      ~{true="--aetitle" false="" aeAeTitle} \
      ~{true="--max-pdu" false="" maxMaxPdu} \
      ~{true="-u" false="" uU} \
      ~{true="--remote" false="" remoteRemote}
  >>>
}