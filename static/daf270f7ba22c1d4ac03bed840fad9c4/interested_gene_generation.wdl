version 1.0

task InterestedGeneGeneration.pl {
  input {
    Boolean genbankGenbankFileDirectory
    Boolean databaseDatabase
    Boolean outputOutputDirectory
    Boolean multipleMultipleThreads
    Boolean startStartAtBlast
    Boolean eEValue
    Boolean identifyIdentify
    Boolean coverageCoverage
    Boolean matchMatchLength
  }
  command <<<
    interested_gene_generation.pl \
      ~{true="--genbank_file_directory" false="" genbankGenbankFileDirectory} \
      ~{true="--database" false="" databaseDatabase} \
      ~{true="--output_directory" false="" outputOutputDirectory} \
      ~{true="--multiple_threads" false="" multipleMultipleThreads} \
      ~{true="--start_at_blast" false="" startStartAtBlast} \
      ~{true="--e_value" false="" eEValue} \
      ~{true="--identify" false="" identifyIdentify} \
      ~{true="--coverage" false="" coverageCoverage} \
      ~{true="--match_length" false="" matchMatchLength}
  >>>
}