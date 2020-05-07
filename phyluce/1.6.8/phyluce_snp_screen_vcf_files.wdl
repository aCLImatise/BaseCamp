version 1.0

task PhyluceSnpScreenVcfFiles {
  input {
    String inputInput
    String outputOutput
    String completeComplete
  }
  command <<<
    phyluce_snp_screen_vcf_files \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(completeComplete) then ("--complete " +  '"' + completeComplete + '"') else ""}
  >>>
}