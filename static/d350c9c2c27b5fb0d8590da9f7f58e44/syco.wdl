version 1.0

task Syco {
  input {
    Boolean? c_file
  }
  command <<<
    syco \
      ~{true="-cfile" false="" c_file}
  >>>
  parameter_meta {
    c_file: "codon      Codon usage file"
  }
}