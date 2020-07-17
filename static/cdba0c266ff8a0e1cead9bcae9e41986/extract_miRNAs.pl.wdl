version 1.0

task ExtractMiRNAs.pl.orig {
  input {
    String perl
  }
  command <<<
    extract_miRNAs.pl.orig \
      ~{perl}
  >>>
  parameter_meta {
    perl: ""
  }
}