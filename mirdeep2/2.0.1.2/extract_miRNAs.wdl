version 1.0

task ExtractMiRNAs.pl {
  input {
    String perl
  }
  command <<<
    extract_miRNAs.pl \
      ~{perl}
  >>>
  parameter_meta {
    perl: ""
  }
}