version 1.0

task Mafcut {
  input {
    String chr_n
  }
  command <<<
    maf_cut \
      ~{chr_n}
  >>>
  runtime {
    docker: "quay.io/biocontainers/last:1219--h2e03b76_0"
  }
  parameter_meta {
    chr_n: ""
  }
  output {
    File out_stdout = stdout()
  }
}