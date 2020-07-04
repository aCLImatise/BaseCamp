version 1.0

task AddRNAoptions.pl {
  input {
    String perl
  }
  command <<<
    addRNAoptions.pl \
      ~{perl}
  >>>
  parameter_meta {
    perl: ""
  }
}