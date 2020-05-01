version 1.0

task AnviGenGeneConsensusSequences {
  input {
    Boolean compressCompressSamples
    String profileProfileDb
    String contigsContigsDb
    String geneGeneCallerIds
    File genesGenesOfInterest
    File samplesSamplesOfInterest
    File outputOutputFile
    Boolean tabTabDelimited
    String engineEngine
    Boolean contigsContigsMode
  }
  command <<<
    anvi-gen-gene-consensus-sequences \
      ~{true="--compress-samples" false="" compressCompressSamples} \
      ~{if defined(profileProfileDb) then ("--profile-db " +  '"' + profileProfileDb + '"') else ""} \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(geneGeneCallerIds) then ("--gene-caller-ids " +  '"' + geneGeneCallerIds + '"') else ""} \
      ~{if defined(genesGenesOfInterest) then ("--genes-of-interest " +  '"' + genesGenesOfInterest + '"') else ""} \
      ~{if defined(samplesSamplesOfInterest) then ("--samples-of-interest " +  '"' + samplesSamplesOfInterest + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{true="--tab-delimited" false="" tabTabDelimited} \
      ~{if defined(engineEngine) then ("--engine " +  '"' + engineEngine + '"') else ""} \
      ~{true="--contigs-mode" false="" contigsContigsMode}
  >>>
}