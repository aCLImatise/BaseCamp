version 1.0

task Wlmscpfs {
  input {
    Boolean qQ
    Boolean vV
    Boolean dD
    Boolean llLl
    Boolean lcLc
    Boolean sS
    Boolean dataDataFilesPath
    Boolean enableEnableFileReject
    Boolean disableDisableFileReject
    Boolean returnReturnNoCharSet
    Boolean returnReturnIsoIr100
    Boolean keepKeepCharSet
    Boolean noNoSqExpansion
    Boolean uU
    Boolean taTa
    Boolean tdTd
    Boolean maxMaxPdu
    Boolean disableDisableHostLookup
    String? portPort
  }
  command <<<
    wlmscpfs \
      ~{portPort} \
      ~{true="-q" false="" qQ} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="-ll" false="" llLl} \
      ~{true="-lc" false="" lcLc} \
      ~{true="-s" false="" sS} \
      ~{true="--data-files-path" false="" dataDataFilesPath} \
      ~{true="--enable-file-reject" false="" enableEnableFileReject} \
      ~{true="--disable-file-reject" false="" disableDisableFileReject} \
      ~{true="--return-no-char-set" false="" returnReturnNoCharSet} \
      ~{true="--return-iso-ir-100" false="" returnReturnIsoIr100} \
      ~{true="--keep-char-set" false="" keepKeepCharSet} \
      ~{true="--no-sq-expansion" false="" noNoSqExpansion} \
      ~{true="-u" false="" uU} \
      ~{true="-ta" false="" taTa} \
      ~{true="-td" false="" tdTd} \
      ~{true="--max-pdu" false="" maxMaxPdu} \
      ~{true="--disable-host-lookup" false="" disableDisableHostLookup}
  >>>
}