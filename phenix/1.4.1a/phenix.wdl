version 1.0

task Phenix.pyVcf2json {
  input {
    String inputInput
    String outputOutputFilePrefix
    Boolean noNoZip
    Boolean vcfVcfIsFiltered
    Boolean summarySummaryInfo
  }
  command <<<
    phenix.py vcf2json \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutputFilePrefix) then ("--output_file_prefix " +  '"' + outputOutputFilePrefix + '"') else ""} \
      ~{true="--nozip" false="" noNoZip} \
      ~{true="--vcf_is_filtered" false="" vcfVcfIsFiltered} \
      ~{true="--summary_info" false="" summarySummaryInfo}
  >>>
}