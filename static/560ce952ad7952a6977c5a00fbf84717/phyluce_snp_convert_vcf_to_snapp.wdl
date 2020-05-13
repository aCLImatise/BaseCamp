version 1.0

task PhyluceSnpConvertVcfToSnapp {
  input {
    String inputInput
    String outputOutput
    Boolean filterFilterIdentical
    Boolean filterFilterInformative
  }
  command <<<
    phyluce_snp_convert_vcf_to_snapp \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--filter-identical" false="" filterFilterIdentical} \
      ~{true="--filter-informative" false="" filterFilterInformative}
  >>>
}