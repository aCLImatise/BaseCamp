version 1.0

task Storescu {
  input {
    Boolean fF
    Boolean aeAeTitle
    Boolean callCall
    Boolean xfXf
    Boolean uU
    Boolean userUser
    Boolean passwordPassword
    Boolean emptyEmptyPassword
    Boolean ktKt
    Boolean posPosResponse
    Boolean pwPw
    Boolean pemPemKeys
    Boolean derDerKeys
    Boolean rcRc
    Boolean vcVc
    Boolean icIc
    String? peerPeer
    String? portPort
    String? dcmDcmFileIn
  }
  command <<<
    storescu \
      ~{peerPeer} \
      ~{true="-f" false="" fF} \
      ~{true="--aetitle" false="" aeAeTitle} \
      ~{true="--call" false="" callCall} \
      ~{true="-xf" false="" xfXf} \
      ~{true="-u" false="" uU} \
      ~{true="--user" false="" userUser} \
      ~{true="--password" false="" passwordPassword} \
      ~{true="--empty-password" false="" emptyEmptyPassword} \
      ~{true="-kt" false="" ktKt} \
      ~{true="--pos-response" false="" posPosResponse} \
      ~{true="-pw" false="" pwPw} \
      ~{true="--pem-keys" false="" pemPemKeys} \
      ~{true="--der-keys" false="" derDerKeys} \
      ~{true="-rc" false="" rcRc} \
      ~{true="-vc" false="" vcVc} \
      ~{true="-ic" false="" icIc} \
      ~{portPort} \
      ~{dcmDcmFileIn}
  >>>
}