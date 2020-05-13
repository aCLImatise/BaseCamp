version 1.0

task Termscu {
  input {
    Boolean qQ
    Boolean vV
    Boolean dD
    Boolean llLl
    Boolean lcLc
    Boolean aeAeTitle
    Boolean callCall
    Boolean maxMaxPdu
    String? peerPeer
    String? portPort
  }
  command <<<
    termscu \
      ~{peerPeer} \
      ~{true="-q" false="" qQ} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="-ll" false="" llLl} \
      ~{true="-lc" false="" lcLc} \
      ~{true="--aetitle" false="" aeAeTitle} \
      ~{true="--call" false="" callCall} \
      ~{true="--max-pdu" false="" maxMaxPdu} \
      ~{portPort}
  >>>
}