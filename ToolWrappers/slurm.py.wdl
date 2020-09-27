version 1.0

task Slurmpy {
  command <<<
    slurm_py
  >>>
  output {
    File out_stdout = stdout()
  }
}