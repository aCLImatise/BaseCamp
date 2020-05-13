version 1.0

task ScssimSimuvars {
  input {
    String refRef
    String snpSnp
    String varVar
    String outputOutput
  }
  command <<<
    scssim simuvars \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{if defined(snpSnp) then ("--snp " +  '"' + snpSnp + '"') else ""} \
      ~{if defined(varVar) then ("--var " +  '"' + varVar + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}