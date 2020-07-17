version 1.0

task BiomSummarizeTable {
  input {
    File? input_fp
    File? output_fp
    Boolean? qualitative
    Boolean? observations
  }
  command <<<
    biom summarize-table \
      ~{if defined(input_fp) then ("--input-fp " +  '"' + input_fp + '"') else ""} \
      ~{if defined(output_fp) then ("--output-fp " +  '"' + output_fp + '"') else ""} \
      ~{true="--qualitative" false="" qualitative} \
      ~{true="--observations" false="" observations}
  >>>
  parameter_meta {
    input_fp: "The input BIOM table  [required]"
    output_fp: "An output file-path"
    qualitative: "Present counts as number of unique observation ids per sample, rather than counts of observations per sample."
    observations: "Summarize over observations"
  }
}