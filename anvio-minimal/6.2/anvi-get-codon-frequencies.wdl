version 1.0

task AnviGetCodonFrequencies {
  input {
    String contigsContigsDb
    String geneGeneCallerId
    Boolean returnReturnAaFrequenciesInstead
    File outputOutputFile
    Boolean percentPercentNormalize
    Boolean mereMereNsCodonNormalization
  }
  command <<<
    anvi-get-codon-frequencies \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(geneGeneCallerId) then ("--gene-caller-id " +  '"' + geneGeneCallerId + '"') else ""} \
      ~{true="--return-AA-frequencies-instead" false="" returnReturnAaFrequenciesInstead} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{true="--percent-normalize" false="" percentPercentNormalize} \
      ~{true="--merens-codon-normalization" false="" mereMereNsCodonNormalization}
  >>>
}