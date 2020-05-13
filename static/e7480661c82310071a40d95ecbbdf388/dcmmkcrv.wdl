version 1.0

task Dcmmkcrv {
  input {
    Boolean qQ
    Boolean vV
    Boolean dD
    Boolean llLl
    Boolean lcLc
    Boolean cC
    Boolean gG
    Boolean aA
    String? dcmDcmFileIn
    String? curveCurveDataIn
    String? dcmDcmFileOut
  }
  command <<<
    dcmmkcrv \
      ~{dcmDcmFileIn} \
      ~{true="-q" false="" qQ} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="-ll" false="" llLl} \
      ~{true="-lc" false="" lcLc} \
      ~{true="-c" false="" cC} \
      ~{true="-g" false="" gG} \
      ~{true="-a" false="" aA} \
      ~{curveCurveDataIn} \
      ~{dcmDcmFileOut}
  >>>
}