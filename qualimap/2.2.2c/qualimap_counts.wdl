version 1.0

task QualimapCounts {
  input {
    Boolean compareCompare
    String dataData
    String infoInfo
    String thresholdThreshold
    String outdirOutdir
    String outfileOutfile
    String outOutFormat
    String rRScriptPath
    String speciesSpecies
  }
  command <<<
    qualimap counts \
      ~{true="--compare" false="" compareCompare} \
      ~{if defined(dataData) then ("--data " +  '"' + dataData + '"') else ""} \
      ~{if defined(infoInfo) then ("--info " +  '"' + infoInfo + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{if defined(outdirOutdir) then ("-outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(outfileOutfile) then ("-outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(outOutFormat) then ("-outformat " +  '"' + outOutFormat + '"') else ""} \
      ~{if defined(rRScriptPath) then ("--rscriptpath " +  '"' + rRScriptPath + '"') else ""} \
      ~{if defined(speciesSpecies) then ("--species " +  '"' + speciesSpecies + '"') else ""}
  >>>
}