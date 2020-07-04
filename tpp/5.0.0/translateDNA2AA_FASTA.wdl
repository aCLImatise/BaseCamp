version 1.0

task TranslateDNA2AAFASTA {
  input {
    String translate
  }
  command <<<
    translateDNA2AA-FASTA \
      ~{translate}
  >>>
  parameter_meta {
    translate: "Input File:  --help"
  }
}