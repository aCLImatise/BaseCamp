version 1.0

task Movescu {
  input {
    Boolean qQ
    Boolean vV
    Boolean dD
    Boolean llLl
    Boolean lcLc
    Boolean kK
    Boolean pP
    Boolean sS
    Boolean oO
    Boolean aeAeTitle
    Boolean callCall
    Boolean moveMove
    Boolean xX
    Boolean xeXe
    Boolean xbXb
    Boolean xdXd
    Boolean xiXi
    Boolean noNoPort
    Boolean piPi
    Boolean prPr
    Boolean toTo
    Boolean taTa
    Boolean tdTd
    Boolean maxMaxPdu
    Boolean disableDisableHostLookup
    Boolean repeatRepeat
    Boolean abortAbort
    Boolean ignoreIgnore
    Boolean cancelCancel
    Boolean upUp
    Boolean odOd
    Boolean fF
    Boolean uU
    Boolean gG
    Boolean eE
    String? peerPeer
    String? portPort
    String? dcmDcmFileIn
  }
  command <<<
    movescu \
      ~{peerPeer} \
      ~{true="-q" false="" qQ} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="-ll" false="" llLl} \
      ~{true="-lc" false="" lcLc} \
      ~{true="-k" false="" kK} \
      ~{true="-P" false="" pP} \
      ~{true="-S" false="" sS} \
      ~{true="-O" false="" oO} \
      ~{true="--aetitle" false="" aeAeTitle} \
      ~{true="--call" false="" callCall} \
      ~{true="--move" false="" moveMove} \
      ~{true="-x" false="" xX} \
      ~{true="-xe" false="" xeXe} \
      ~{true="-xb" false="" xbXb} \
      ~{true="-xd" false="" xdXd} \
      ~{true="-xi" false="" xiXi} \
      ~{true="--no-port" false="" noNoPort} \
      ~{true="-pi" false="" piPi} \
      ~{true="-pr" false="" prPr} \
      ~{true="-to" false="" toTo} \
      ~{true="-ta" false="" taTa} \
      ~{true="-td" false="" tdTd} \
      ~{true="--max-pdu" false="" maxMaxPdu} \
      ~{true="--disable-host-lookup" false="" disableDisableHostLookup} \
      ~{true="--repeat" false="" repeatRepeat} \
      ~{true="--abort" false="" abortAbort} \
      ~{true="--ignore" false="" ignoreIgnore} \
      ~{true="--cancel" false="" cancelCancel} \
      ~{true="-up" false="" upUp} \
      ~{true="-od" false="" odOd} \
      ~{true="-F" false="" fF} \
      ~{true="-u" false="" uU} \
      ~{true="-g" false="" gG} \
      ~{true="-e" false="" eE} \
      ~{portPort} \
      ~{dcmDcmFileIn}
  >>>
}