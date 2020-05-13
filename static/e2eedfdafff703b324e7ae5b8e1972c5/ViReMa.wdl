version 1.0

task ViReMa.py {
  input {
    String hostHostIndex
    String nN
    String seedSeed
    String threeThreePad
    String fiveFivePad
    String xX
    String hostHostSeed
    Boolean fF
    String deDeFuzz
    Int maxMaxFuzz
    Boolean dedDedUp
    Boolean readReadNamesEntry
    String microMicroInDelLength
    String compoundCompoundHandling
    String outputOutputTag
    String outputOutputDir
    String pP
    String chunkChunk
    String alignerAligner
    Boolean noNoCompile
    Boolean bedBed
    Boolean winWin
    String? virusVirusIndex
    String? inputInputData
    String? outputOutputData
  }
  command <<<
    ViReMa.py \
      ~{virusVirusIndex} \
      ~{if defined(hostHostIndex) then ("--Host_Index " +  '"' + hostHostIndex + '"') else ""} \
      ~{if defined(nN) then ("--N " +  '"' + nN + '"') else ""} \
      ~{if defined(seedSeed) then ("--Seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(threeThreePad) then ("--ThreePad " +  '"' + threeThreePad + '"') else ""} \
      ~{if defined(fiveFivePad) then ("--FivePad " +  '"' + fiveFivePad + '"') else ""} \
      ~{if defined(xX) then ("--X " +  '"' + xX + '"') else ""} \
      ~{if defined(hostHostSeed) then ("--Host_Seed " +  '"' + hostHostSeed + '"') else ""} \
      ~{true="-F" false="" fF} \
      ~{if defined(deDeFuzz) then ("--Defuzz " +  '"' + deDeFuzz + '"') else ""} \
      ~{if defined(maxMaxFuzz) then ("--MaxFuzz " +  '"' + maxMaxFuzz + '"') else ""} \
      ~{true="-DeDup" false="" dedDedUp} \
      ~{true="-ReadNamesEntry" false="" readReadNamesEntry} \
      ~{if defined(microMicroInDelLength) then ("--MicroInDel_Length " +  '"' + microMicroInDelLength + '"') else ""} \
      ~{if defined(compoundCompoundHandling) then ("--Compound_Handling " +  '"' + compoundCompoundHandling + '"') else ""} \
      ~{if defined(outputOutputTag) then ("--Output_Tag " +  '"' + outputOutputTag + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--Output_Dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(pP) then ("--p " +  '"' + pP + '"') else ""} \
      ~{if defined(chunkChunk) then ("--Chunk " +  '"' + chunkChunk + '"') else ""} \
      ~{if defined(alignerAligner) then ("--Aligner " +  '"' + alignerAligner + '"') else ""} \
      ~{true="-No_Compile" false="" noNoCompile} \
      ~{true="-BED" false="" bedBed} \
      ~{true="-Win" false="" winWin} \
      ~{inputInputData} \
      ~{outputOutputData}
  >>>
}