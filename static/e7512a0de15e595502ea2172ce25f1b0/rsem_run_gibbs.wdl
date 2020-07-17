version 1.0

task RsemRunGibbs {
  input {
    String reference_name
    String imd_name
    String stat_name
    String burnin
    String n_samples
    String gap
  }
  command <<<
    rsem-run-gibbs \
      ~{reference_name} \
      ~{imd_name} \
      ~{stat_name} \
      ~{burnin} \
      ~{n_samples} \
      ~{gap}
  >>>
  parameter_meta {
    reference_name: ""
    imd_name: ""
    stat_name: ""
    burnin: ""
    n_samples: ""
    gap: ""
  }
}