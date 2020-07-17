version 1.0

task Motif2Jaspar.pl {
  input {
    String motif_file
  }
  command <<<
    motif2Jaspar.pl \
      ~{motif_file}
  >>>
  parameter_meta {
    motif_file: ""
  }
}