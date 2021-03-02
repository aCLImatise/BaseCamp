version 1.0

task Slurmpy {
  command <<<
    slurm_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}