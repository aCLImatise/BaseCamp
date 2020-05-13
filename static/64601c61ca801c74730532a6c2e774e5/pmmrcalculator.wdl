version 1.0

task Pmmrcalculator {
  input {
    String inputInput
    String outputOutput
    String suffixSuffix
  }
  command <<<
    pmmrcalculator \
      ~{if defined(inputInput) then ("--Input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--Output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(suffixSuffix) then ("--Suffix " +  '"' + suffixSuffix + '"') else ""}
  >>>
}