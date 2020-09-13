version 1.0

task Rsemgff3togtf {
  command <<<
    rsem_gff3_to_gtf
  >>>
  output {
    File out_stdout = stdout()
  }
}