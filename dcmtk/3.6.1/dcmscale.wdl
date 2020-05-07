version 1.0

task Dcmscale {
  input {
    Boolean qQ
    Boolean vV
    Boolean dD
    Boolean llLl
    Boolean lcLc
    Boolean fF
    Boolean tT
    Boolean tdTd
    Boolean teTe
    Boolean tbTb
    Boolean tiTi
    Boolean fF
    Boolean uU
    Boolean gG
    Boolean eE
    String? dcmDcmFileIn
    String? dcmDcmFileOut
  }
  command <<<
    dcmscale \
      ~{dcmDcmFileIn} \
      ~{true="-q" false="" qQ} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="-ll" false="" llLl} \
      ~{true="-lc" false="" lcLc} \
      ~{true="-f" false="" fF} \
      ~{true="-t" false="" tT} \
      ~{true="-td" false="" tdTd} \
      ~{true="-te" false="" teTe} \
      ~{true="-tb" false="" tbTb} \
      ~{true="-ti" false="" tiTi} \
      ~{true="-F" false="" fF} \
      ~{true="-u" false="" uU} \
      ~{true="-g" false="" gG} \
      ~{true="-e" false="" eE} \
      ~{dcmDcmFileOut}
  >>>
}