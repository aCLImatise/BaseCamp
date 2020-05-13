version 1.0

task Logcombiner {
  input {
    String treesTrees
    String decimalDecimal
    String burninBurnin
    String resampleResample
    String scaleScale
    String stripStrip
    String reReNumber
  }
  command <<<
    logcombiner \
      ~{if defined(treesTrees) then ("-trees " +  '"' + treesTrees + '"') else ""} \
      ~{if defined(decimalDecimal) then ("-decimal " +  '"' + decimalDecimal + '"') else ""} \
      ~{if defined(burninBurnin) then ("-burnin " +  '"' + burninBurnin + '"') else ""} \
      ~{if defined(resampleResample) then ("-resample " +  '"' + resampleResample + '"') else ""} \
      ~{if defined(scaleScale) then ("-scale " +  '"' + scaleScale + '"') else ""} \
      ~{if defined(stripStrip) then ("-strip " +  '"' + stripStrip + '"') else ""} \
      ~{if defined(reReNumber) then ("-renumber " +  '"' + reReNumber + '"') else ""}
  >>>
}