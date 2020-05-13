version 1.0

task Vcf2json.py {
  input {
    String inputInput
    String outputOutputFilePrefix
    Boolean noNoZip
    Boolean vcfVcfIsFiltered
    Boolean summarySummaryInfo
  }
  command <<<
    vcf2json.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutputFilePrefix) then ("--output_file_prefix " +  '"' + outputOutputFilePrefix + '"') else ""} \
      ~{true="--nozip" false="" noNoZip} \
      ~{true="--vcf_is_filtered" false="" vcfVcfIsFiltered} \
      ~{true="--summary_info" false="" summarySummaryInfo}
  >>>
}