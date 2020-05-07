version 1.0

task Dcmsign {
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
    Boolean verifyVerify
    Boolean pwPw
    Boolean pemPemKeys
    Boolean derDerKeys
    Boolean tT
    Boolean tfTf
    Boolean fnFn
    Boolean foFo
    Boolean eE
    String? dcmDcmFileIn
    String? dcmDcmFileOut
  }
  command <<<
    dcmsign \
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
      ~{true="--verify" false="" verifyVerify} \
      ~{true="-pw" false="" pwPw} \
      ~{true="--pem-keys" false="" pemPemKeys} \
      ~{true="--der-keys" false="" derDerKeys} \
      ~{true="-t" false="" tT} \
      ~{true="-tf" false="" tfTf} \
      ~{true="-fn" false="" fnFn} \
      ~{true="-fo" false="" foFo} \
      ~{true="-e" false="" eE} \
      ~{dcmDcmFileOut}
  >>>
}