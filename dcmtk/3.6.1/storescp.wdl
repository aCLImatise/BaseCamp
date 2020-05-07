version 1.0

task Storescp {
  input {
    Boolean singleSingleProcess
    Boolean forkFork
    Boolean xfXf
    Boolean idId
    Boolean taTa
    Boolean tdTd
    Boolean aeAeTitle
    Boolean maxMaxPdu
    Boolean disableDisableHostLookup
    Boolean refuseRefuse
    Boolean rejectReject
    Boolean ignoreIgnore
    Boolean sleepSleepAfter
    Boolean sleepSleepDuring
    Boolean abortAbortAfter
    Boolean abortAbortDuring
    Boolean pmPm
    Boolean upUp
    Boolean pwPw
    Boolean pemPemKeys
    Boolean derDerKeys
    Boolean rcRc
    Boolean vcVc
    Boolean icIc
    Boolean odOd
    Boolean fF
    Boolean uU
    Boolean gG
    Boolean eE
    Boolean ssSs
    Boolean suSu
    Boolean spSp
    Boolean tnTn
    Boolean feFe
    Boolean xcrXcr
    Boolean xcsXcs
    Boolean rnsRns
    Boolean tosTos
    Boolean xsXs
    String? portPort
  }
  command <<<
    storescp \
      ~{portPort} \
      ~{true="--single-process" false="" singleSingleProcess} \
      ~{true="--fork" false="" forkFork} \
      ~{true="-xf" false="" xfXf} \
      ~{true="-id" false="" idId} \
      ~{true="-ta" false="" taTa} \
      ~{true="-td" false="" tdTd} \
      ~{true="--aetitle" false="" aeAeTitle} \
      ~{true="--max-pdu" false="" maxMaxPdu} \
      ~{true="--disable-host-lookup" false="" disableDisableHostLookup} \
      ~{true="--refuse" false="" refuseRefuse} \
      ~{true="--reject" false="" rejectReject} \
      ~{true="--ignore" false="" ignoreIgnore} \
      ~{true="--sleep-after" false="" sleepSleepAfter} \
      ~{true="--sleep-during" false="" sleepSleepDuring} \
      ~{true="--abort-after" false="" abortAbortAfter} \
      ~{true="--abort-during" false="" abortAbortDuring} \
      ~{true="-pm" false="" pmPm} \
      ~{true="-up" false="" upUp} \
      ~{true="-pw" false="" pwPw} \
      ~{true="--pem-keys" false="" pemPemKeys} \
      ~{true="--der-keys" false="" derDerKeys} \
      ~{true="-rc" false="" rcRc} \
      ~{true="-vc" false="" vcVc} \
      ~{true="-ic" false="" icIc} \
      ~{true="-od" false="" odOd} \
      ~{true="-F" false="" fF} \
      ~{true="-u" false="" uU} \
      ~{true="-g" false="" gG} \
      ~{true="-e" false="" eE} \
      ~{true="-ss" false="" ssSs} \
      ~{true="-su" false="" suSu} \
      ~{true="-sp" false="" spSp} \
      ~{true="-tn" false="" tnTn} \
      ~{true="-fe" false="" feFe} \
      ~{true="-xcr" false="" xcrXcr} \
      ~{true="-xcs" false="" xcsXcs} \
      ~{true="-rns" false="" rnsRns} \
      ~{true="-tos" false="" tosTos} \
      ~{true="-xs" false="" xsXs}
  >>>
}