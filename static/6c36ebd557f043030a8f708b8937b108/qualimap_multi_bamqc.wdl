version 1.0

task QualimapMultiBamqc {
  input {
    Boolean paintPaintChromosomeLimits
    String dataData
    String featureFeatureFile
    String hmHm
    String nrNr
    String nwNw
    String outdirOutdir
    String outfileOutfile
    String outOutFormat
    String sequencingSequencingProtocol
    Boolean runRunBamQc
  }
  command <<<
    qualimap multi-bamqc \
      ~{true="--paint-chromosome-limits" false="" paintPaintChromosomeLimits} \
      ~{if defined(dataData) then ("--data " +  '"' + dataData + '"') else ""} \
      ~{if defined(featureFeatureFile) then ("--feature-file " +  '"' + featureFeatureFile + '"') else ""} \
      ~{if defined(hmHm) then ("-hm " +  '"' + hmHm + '"') else ""} \
      ~{if defined(nrNr) then ("-nr " +  '"' + nrNr + '"') else ""} \
      ~{if defined(nwNw) then ("-nw " +  '"' + nwNw + '"') else ""} \
      ~{if defined(outdirOutdir) then ("-outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(outfileOutfile) then ("-outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(outOutFormat) then ("-outformat " +  '"' + outOutFormat + '"') else ""} \
      ~{if defined(sequencingSequencingProtocol) then ("--sequencing-protocol " +  '"' + sequencingSequencingProtocol + '"') else ""} \
      ~{true="--run-bamqc" false="" runRunBamQc}
  >>>
}