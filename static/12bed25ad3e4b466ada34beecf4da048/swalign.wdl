version 1.0

task Swalign {
  input {
    String mM
    String mmMm
    String gapGap
    String gapGapExt
    String gapGapDecay
    String wrapWrap
    Boolean globalGlobal
    Boolean queryQuery
    String summarySummary
    Boolean useUseRegion
  }
  command <<<
    swalign \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(mmMm) then ("-mm " +  '"' + mmMm + '"') else ""} \
      ~{if defined(gapGap) then ("-gap " +  '"' + gapGap + '"') else ""} \
      ~{if defined(gapGapExt) then ("-gapext " +  '"' + gapGapExt + '"') else ""} \
      ~{if defined(gapGapDecay) then ("-gapdecay " +  '"' + gapGapDecay + '"') else ""} \
      ~{if defined(wrapWrap) then ("-wrap " +  '"' + wrapWrap + '"') else ""} \
      ~{true="-global" false="" globalGlobal} \
      ~{true="-query" false="" queryQuery} \
      ~{if defined(summarySummary) then ("-summary " +  '"' + summarySummary + '"') else ""} \
      ~{true="-useregion" false="" useUseRegion}
  >>>
}