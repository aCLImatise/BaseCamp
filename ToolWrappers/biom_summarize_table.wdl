version 1.0

task BiomSummarizetable {
  input {
    File? input_fp
    File? output_fp
    Boolean? qualitative
    Boolean? observations
    String observations_dot
  }
  command <<<
    biom summarize_table \
      ~{observations_dot} \
      ~{if defined(input_fp) then ("--input-fp " +  '"' + input_fp + '"') else ""} \
      ~{if defined(output_fp) then ("--output-fp " +  '"' + output_fp + '"') else ""} \
      ~{if (qualitative) then "--qualitative" else ""} \
      ~{if (observations) then "--observations" else ""}
  >>>
  parameter_meta {
    input_fp: "The input BIOM table  [required]"
    output_fp: "An output file-path"
    qualitative: "Present counts as number of unique observation ids per\\nsample, rather than counts of observations per sample."
    observations: "Summarize over observations"
    observations_dot: "Example usage:"
  }
  output {
    File out_stdout = stdout()
    File out_output_fp = "${in_output_fp}"
  }
}