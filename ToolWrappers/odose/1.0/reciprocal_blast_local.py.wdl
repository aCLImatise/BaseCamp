version 1.0

task ReciprocalBlastLocalpy {
  command <<<
    reciprocal_blast_local_py
  >>>
  output {
    File out_stdout = stdout()
  }
}