version 1.0

task RemoveRedundant {
  input {
    Boolean gff3Gff3
    String? polishesPolishesFile
  }
  command <<<
    removeRedundant \
      ~{polishesPolishesFile} \
      ~{true="-gff3" false="" gff3Gff3}
  >>>
}