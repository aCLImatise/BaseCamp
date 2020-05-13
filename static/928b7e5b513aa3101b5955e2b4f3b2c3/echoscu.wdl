version 1.0

task Echoscu {
  input {
    Boolean qQ
    Boolean vV
    Boolean dD
    Boolean llLl
    Boolean lcLc
    Boolean aeAeTitle
    Boolean callCall
    Boolean proposeProposeTs
    Boolean proposeProposePc
    Boolean toTo
    Boolean taTa
    Boolean tdTd
    Boolean maxMaxPdu
    Boolean repeatRepeat
    Boolean abortAbort
    Boolean pwPw
    Boolean pemPemKeys
    Boolean derDerKeys
    Boolean rcRc
    Boolean vcVc
    Boolean icIc
    String? peerPeer
    String? portPort
  }
  command <<<
    echoscu \
      ~{peerPeer} \
      ~{true="-q" false="" qQ} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="-ll" false="" llLl} \
      ~{true="-lc" false="" lcLc} \
      ~{true="--aetitle" false="" aeAeTitle} \
      ~{true="--call" false="" callCall} \
      ~{true="--propose-ts" false="" proposeProposeTs} \
      ~{true="--propose-pc" false="" proposeProposePc} \
      ~{true="-to" false="" toTo} \
      ~{true="-ta" false="" taTa} \
      ~{true="-td" false="" tdTd} \
      ~{true="--max-pdu" false="" maxMaxPdu} \
      ~{true="--repeat" false="" repeatRepeat} \
      ~{true="--abort" false="" abortAbort} \
      ~{true="-pw" false="" pwPw} \
      ~{true="--pem-keys" false="" pemPemKeys} \
      ~{true="--der-keys" false="" derDerKeys} \
      ~{true="-rc" false="" rcRc} \
      ~{true="-vc" false="" vcVc} \
      ~{true="-ic" false="" icIc} \
      ~{portPort}
  >>>
}