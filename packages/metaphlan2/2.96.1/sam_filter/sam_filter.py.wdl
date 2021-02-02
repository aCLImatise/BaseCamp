version 1.0

task SamFilterpy {
  input {
    File? input_file
    Int? min_align_score
    Boolean? verbose
  }
  command <<<
    sam_filter_py \
      ~{if defined(input_file) then ("--input_file " +  '"' + input_file + '"') else ""} \
      ~{if defined(min_align_score) then ("--min_align_score " +  '"' + min_align_score + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    input_file: "The input sam file."
    min_align_score: "The sam records with alignment score smaller than this\\nvalue will be discarded."
    verbose: "Show all information. Default \\\"not set\\\"."
  }
  output {
    File out_stdout = stdout()
  }
}