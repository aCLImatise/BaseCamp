version 1.0

task LordecSgeSlurmWrappersh {
  input {
    Boolean? slur_m
  }
  command <<<
    lordec_sge_slurm_wrapper_sh \
      ~{if (slur_m) then "--slurm" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    slur_m: "[-J nb_jobs | -N nb_reads_per_job] -P parallel_env_name -B lordec-build-SR-graph_PATH -C lordec-correct_PATH [-Q QUEUE_NAME] [-W NB_MINUTES_MAX] lordec_options..."
  }
  output {
    File out_stdout = stdout()
  }
}