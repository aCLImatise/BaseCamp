version 1.0

task LocarnapRevcomp.pl {
  input {
    String fast_a_files
  }
  command <<<
    locarnap-revcomp.pl \
      ~{fast_a_files}
  >>>
  parameter_meta {
    fast_a_files: ""
  }
}