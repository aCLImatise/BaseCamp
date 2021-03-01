version 1.0

task Rsatretrieveseq {
  command <<<
    rsat_retrieve_seq
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}