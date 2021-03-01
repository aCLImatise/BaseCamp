version 1.0

task IntronExonReadspyc {
  command <<<
    intron_exon_reads_pyc
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}