version 1.0

task Indexfastafile {
  input {
    String index_fast_a_file
    File fast_a_filename
    File index_filename
  }
  command <<<
    index_fasta_file \
      ~{index_fast_a_file} \
      ~{fast_a_filename} \
      ~{index_filename}
  >>>
  runtime {
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  parameter_meta {
    index_fast_a_file: ""
    fast_a_filename: ""
    index_filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}