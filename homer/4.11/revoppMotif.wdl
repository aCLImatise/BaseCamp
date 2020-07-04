version 1.0

task RevoppMotif.pl {
  input {
    String motif_file
  }
  command <<<
    revoppMotif.pl \
      ~{motif_file}
  >>>
  parameter_meta {
    motif_file: ""
  }
}