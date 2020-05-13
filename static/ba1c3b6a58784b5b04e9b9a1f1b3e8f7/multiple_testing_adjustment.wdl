version 1.0

task MultipleTestingAdjustment.py {
  input {
    String inputInput
    String uniqidUniqid
    String pvalPval
    String alphaAlpha
    String outOutAdjusted
    String flagsFlags
  }
  command <<<
    multiple_testing_adjustment.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(uniqidUniqid) then ("--uniqID " +  '"' + uniqidUniqid + '"') else ""} \
      ~{if defined(pvalPval) then ("--pval " +  '"' + pvalPval + '"') else ""} \
      ~{if defined(alphaAlpha) then ("--alpha " +  '"' + alphaAlpha + '"') else ""} \
      ~{if defined(outOutAdjusted) then ("--outadjusted " +  '"' + outOutAdjusted + '"') else ""} \
      ~{if defined(flagsFlags) then ("--flags " +  '"' + flagsFlags + '"') else ""}
  >>>
}