version 1.0

task TaxmapperFilter {
  input {
    String taxTax
    String outOut
    String autoAuto
    String identityIdentity
    String identityIdentityRatio
    String evalueEvalue
    String evalueEvalueDiff
  }
  command <<<
    taxmapper filter \
      ~{if defined(taxTax) then ("--tax " +  '"' + taxTax + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(autoAuto) then ("--auto " +  '"' + autoAuto + '"') else ""} \
      ~{if defined(identityIdentity) then ("--identity " +  '"' + identityIdentity + '"') else ""} \
      ~{if defined(identityIdentityRatio) then ("--identity-ratio " +  '"' + identityIdentityRatio + '"') else ""} \
      ~{if defined(evalueEvalue) then ("--evalue " +  '"' + evalueEvalue + '"') else ""} \
      ~{if defined(evalueEvalueDiff) then ("--evalue-diff " +  '"' + evalueEvalueDiff + '"') else ""}
  >>>
}