version 1.0

task TranslateDNA2AAFASTA {
  input {
    String? translateTranslate
  }
  command <<<
    translateDNA2AA-FASTA \
      ~{translateTranslate}
  >>>
}