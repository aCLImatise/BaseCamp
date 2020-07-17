version 1.0

task _syco {
  input {
    Boolean? c_file
  }
  command <<<
    _syco \
      ~{true="-cfile" false="" c_file}
  >>>
  parameter_meta {
    c_file: "codon      Codon usage file"
  }
}