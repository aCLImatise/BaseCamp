version 1.0

task Rsemrungibbs {
  input {
    String reference_name
    String imd_name
    String stat_name
    String burnin
    String n_samples
    String gap
  }
  command <<<
    rsem_run_gibbs \
      ~{reference_name} \
      ~{imd_name} \
      ~{stat_name} \
      ~{burnin} \
      ~{n_samples} \
      ~{gap}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reference_name: ""
    imd_name: ""
    stat_name: ""
    burnin: ""
    n_samples: ""
    gap: ""
  }
  output {
    File out_stdout = stdout()
  }
}