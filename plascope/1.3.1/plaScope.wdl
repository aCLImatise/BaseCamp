version 1.0

task PlaScope.sh {
  input {
    Boolean noNoBanner
    Boolean tT
    Boolean oO
    Boolean sampleSample
    Boolean dbDbDir
    Boolean dbDbName
    Boolean fastFastA
    String? optionsOptions
    String? argumentsArguments
  }
  command <<<
    plaScope.sh \
      ~{optionsOptions} \
      ~{true="--no-banner" false="" noNoBanner} \
      ~{true="-t" false="" tT} \
      ~{true="-o" false="" oO} \
      ~{true="--sample" false="" sampleSample} \
      ~{true="--db_dir" false="" dbDbDir} \
      ~{true="--db_name" false="" dbDbName} \
      ~{true="--fasta" false="" fastFastA} \
      ~{argumentsArguments}
  >>>
}