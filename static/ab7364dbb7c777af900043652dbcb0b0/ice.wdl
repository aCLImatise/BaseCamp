version 1.0

task Ice {
  input {
    String? results_filename
    String normalization
  }
  command <<<
    ice \
      ~{normalization} \
      ~{if defined(results_filename) then ("--results_filename " +  '"' + results_filename + '"') else ""}
  >>>
  parameter_meta {
    results_filename: ""
    normalization: ""
  }
}