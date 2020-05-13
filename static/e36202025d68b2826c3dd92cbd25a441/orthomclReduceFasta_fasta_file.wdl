version 1.0

task OrthomclReduceFastaFastaFile {
  input {
    String? taxTaxA
  }
  command <<<
    orthomclReduceFasta fasta_file \
      ~{taxTaxA}
  >>>
}