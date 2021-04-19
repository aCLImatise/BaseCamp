version 1.0

task ReciprocalBlastLocal {
  command <<<
    reciprocal_blast_local
  >>>
  output {
    File out_stdout = stdout()
  }
}