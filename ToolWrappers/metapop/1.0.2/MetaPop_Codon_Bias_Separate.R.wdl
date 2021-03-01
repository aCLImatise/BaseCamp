version 1.0

task MetaPopCodonBiasSeparateR {
  command <<<
    MetaPop_Codon_Bias_Separate_R
  >>>
  runtime {
    docker: "quay.io/biocontainers/metapop:1.0.2--0"
  }
  output {
    File out_stdout = stdout()
  }
}