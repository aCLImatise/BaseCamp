version 1.0

task Dcmsend {
  input {
    Boolean fF
    Boolean nhNh
    Boolean noNoIllegalProposal
    Boolean noNoUidChecks
    Boolean aeAeTitle
    Boolean callCall
    Boolean maMa
    Boolean toTo
    Boolean taTa
    Boolean tdTd
    Boolean maxMaxPdu
    Boolean maxMaxSendPdu
    String? peerPeer
    String? portPort
    String? dcmDcmFileIn
  }
  command <<<
    dcmsend \
      ~{peerPeer} \
      ~{true="-f" false="" fF} \
      ~{true="-nh" false="" nhNh} \
      ~{true="--no-illegal-proposal" false="" noNoIllegalProposal} \
      ~{true="--no-uid-checks" false="" noNoUidChecks} \
      ~{true="--aetitle" false="" aeAeTitle} \
      ~{true="--call" false="" callCall} \
      ~{true="-ma" false="" maMa} \
      ~{true="-to" false="" toTo} \
      ~{true="-ta" false="" taTa} \
      ~{true="-td" false="" tdTd} \
      ~{true="--max-pdu" false="" maxMaxPdu} \
      ~{true="--max-send-pdu" false="" maxMaxSendPdu} \
      ~{portPort} \
      ~{dcmDcmFileIn}
  >>>
}