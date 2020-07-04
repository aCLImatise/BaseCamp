version 1.0

task Meme2alph {
  input {
    String motifs_file
    String? alphabet_file
  }
  command <<<
    meme2alph \
      ~{motifs_file} \
      ~{alphabet_file}
  >>>
  parameter_meta {
    motifs_file: ""
    alphabet_file: ""
  }
}