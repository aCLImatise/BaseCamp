version 1.0

task PairtoolsParse {
  input {
    String chromChromSPath
    String outputOutput
    String assemblyAssembly
    Int minMinMapq
    Int maxMaxMoleculeSize
    Boolean dropDropReadId
    Boolean dropDropSeq
    Boolean dropDropSam
    String addAddColumns
    String outputOutputParsedAlignments
    String outputOutputStats
    Boolean reportReportAlignmentEnd
    Int maxMaxInterAlignGap
    Boolean walksWalksPolicy
    Boolean noNoFlip
    Int nprocNprocIn
    Int nprocNprocOut
    String cmdCmdIn
    String cmdCmdOut
  }
  command <<<
    pairtools parse \
      ~{if defined(chromChromSPath) then ("--chroms-path " +  '"' + chromChromSPath + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(assemblyAssembly) then ("--assembly " +  '"' + assemblyAssembly + '"') else ""} \
      ~{if defined(minMinMapq) then ("--min-mapq " +  '"' + minMinMapq + '"') else ""} \
      ~{if defined(maxMaxMoleculeSize) then ("--max-molecule-size " +  '"' + maxMaxMoleculeSize + '"') else ""} \
      ~{true="--drop-readid" false="" dropDropReadId} \
      ~{true="--drop-seq" false="" dropDropSeq} \
      ~{true="--drop-sam" false="" dropDropSam} \
      ~{if defined(addAddColumns) then ("--add-columns " +  '"' + addAddColumns + '"') else ""} \
      ~{if defined(outputOutputParsedAlignments) then ("--output-parsed-alignments " +  '"' + outputOutputParsedAlignments + '"') else ""} \
      ~{if defined(outputOutputStats) then ("--output-stats " +  '"' + outputOutputStats + '"') else ""} \
      ~{true="--report-alignment-end" false="" reportReportAlignmentEnd} \
      ~{if defined(maxMaxInterAlignGap) then ("--max-inter-align-gap " +  '"' + maxMaxInterAlignGap + '"') else ""} \
      ~{true="--walks-policy" false="" walksWalksPolicy} \
      ~{true="--no-flip" false="" noNoFlip} \
      ~{if defined(nprocNprocIn) then ("--nproc-in " +  '"' + nprocNprocIn + '"') else ""} \
      ~{if defined(nprocNprocOut) then ("--nproc-out " +  '"' + nprocNprocOut + '"') else ""} \
      ~{if defined(cmdCmdIn) then ("--cmd-in " +  '"' + cmdCmdIn + '"') else ""} \
      ~{if defined(cmdCmdOut) then ("--cmd-out " +  '"' + cmdCmdOut + '"') else ""}
  >>>
}