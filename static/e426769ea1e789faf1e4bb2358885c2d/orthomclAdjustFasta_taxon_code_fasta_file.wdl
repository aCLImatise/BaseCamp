version 1.0

task OrthomclAdjustFastaTaxonCodeFastaFile {
  input {
    String? idIdField
  }
  command <<<
    orthomclAdjustFasta taxon_code fasta_file \
      ~{idIdField}
  >>>
}