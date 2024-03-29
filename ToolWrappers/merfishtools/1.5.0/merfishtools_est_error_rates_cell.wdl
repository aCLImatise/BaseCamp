version 1.0

task MerfishtoolsEsterrorratesCell {
  input {
    String mer_fish_tools
    String est_error_rates
    File tsv_file
  }
  command <<<
    merfishtools est_error_rates cell \
      ~{mer_fish_tools} \
      ~{est_error_rates} \
      ~{tsv_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mer_fish_tools: ""
    est_error_rates: ""
    tsv_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}