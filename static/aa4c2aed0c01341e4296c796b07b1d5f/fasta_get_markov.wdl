version 1.0

task Fastagetmarkov {
  input {
    String? sequence
    File? var_file
    String? background
  }
  command <<<
    fasta_get_markov \
      ~{sequence} \
      ~{var_file} \
      ~{background}
  >>>
  runtime {
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  parameter_meta {
    sequence: ""
    var_file: ""
    background: ""
  }
  output {
    File out_stdout = stdout()
  }
}