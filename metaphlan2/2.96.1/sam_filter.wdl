version 1.0

task SamFilter.py {
  input {
    String? input_file
    Int? min_align_score
    Boolean? verbose
  }
  command <<<
    sam_filter.py \
      ~{if defined(input_file) then ("--input_file " +  '"' + input_file + '"') else ""} \
      ~{if defined(min_align_score) then ("--min_align_score " +  '"' + min_align_score + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    input_file: "The input sam file."
    min_align_score: "The sam records with alignment score smaller than this value will be discarded."
    verbose: "Show all information. Default \"not set\"."
  }
}