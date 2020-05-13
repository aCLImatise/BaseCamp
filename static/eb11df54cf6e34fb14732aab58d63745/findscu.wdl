version 1.0

task Findscu {
  input {
    Boolean qQ
    Boolean vV
    Boolean dD
    Boolean llLl
    Boolean lcLc
    Boolean kK
    Boolean wW
    Boolean pP
    Boolean sS
    Boolean oO
    Boolean aeAeTitle
    Boolean callCall
    Boolean uU
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
    Boolean cancelCancel
    Boolean pwPw
    Boolean pemPemKeys
    Boolean derDerKeys
    Boolean rcRc
    Boolean vcVc
    Boolean icIc
    Boolean odOd
    Boolean dcDc
    Boolean srSr
    Boolean xX
    String? peerPeer
    String? portPort
    String? dcmDcmFileIn
  }
  command <<<
    findscu \
      ~{peerPeer} \
      ~{true="-q" false="" qQ} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="-ll" false="" llLl} \
      ~{true="-lc" false="" lcLc} \
      ~{true="-k" false="" kK} \
      ~{true="-W" false="" wW} \
      ~{true="-P" false="" pP} \
      ~{true="-S" false="" sS} \
      ~{true="-O" false="" oO} \
      ~{true="--aetitle" false="" aeAeTitle} \
      ~{true="--call" false="" callCall} \
      ~{true="-u" false="" uU} \
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
      ~{true="--cancel" false="" cancelCancel} \
      ~{true="-pw" false="" pwPw} \
      ~{true="--pem-keys" false="" pemPemKeys} \
      ~{true="--der-keys" false="" derDerKeys} \
      ~{true="-rc" false="" rcRc} \
      ~{true="-vc" false="" vcVc} \
      ~{true="-ic" false="" icIc} \
      ~{true="-od" false="" odOd} \
      ~{true="-dc" false="" dcDc} \
      ~{true="-sr" false="" srSr} \
      ~{true="-X" false="" xX} \
      ~{portPort} \
      ~{dcmDcmFileIn}
  >>>
}