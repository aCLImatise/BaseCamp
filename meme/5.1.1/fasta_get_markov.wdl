version 1.0

task Fastagetmarkov {
  input {
    String? sequence
    File? file
    String? background
  }
  command <<<
    fasta_get_markov \
      ~{sequence} \
      ~{file} \
      ~{background}
  >>>
  parameter_meta {
    sequence: ""
    file: ""
    background: ""
  }
  output {
    File out_stdout = stdout()
  }
}