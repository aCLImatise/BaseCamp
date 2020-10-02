version 1.0

task Ice {
  input {
    File? results_filename
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
  output {
    File out_stdout = stdout()
  }
}