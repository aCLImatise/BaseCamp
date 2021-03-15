version 1.0

task Dadaist2transposetaxapy {
  command <<<
    dadaist2_transposetaxa_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/dadaist2:0.7.3--0"
  }
  output {
    File out_stdout = stdout()
  }
}