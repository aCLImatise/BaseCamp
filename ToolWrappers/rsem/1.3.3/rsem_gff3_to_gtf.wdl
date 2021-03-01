version 1.0

task Rsemgff3togtf {
  command <<<
    rsem_gff3_to_gtf
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}