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
    docker: "None"
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