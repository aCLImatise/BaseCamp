version 1.0

task PathoscopeID {
  input {
    Boolean outOutMatrix
    Boolean noNoUpdatedAlignFile
    Boolean noNoDisplayCutOff
    String scoreScoreCutOff
    String emEmEpsilon
    String maxiterMaxiter
    String piPiPrior
    String thetaThetaPrior
    String expExpTag
    String outdirOutdir
    String fileFileType
    String alignAlignFile
  }
  command <<<
    pathoscope ID \
      ~{true="--outMatrix" false="" outOutMatrix} \
      ~{true="--noUpdatedAlignFile" false="" noNoUpdatedAlignFile} \
      ~{true="--noDisplayCutoff" false="" noNoDisplayCutOff} \
      ~{if defined(scoreScoreCutOff) then ("-scoreCutoff " +  '"' + scoreScoreCutOff + '"') else ""} \
      ~{if defined(emEmEpsilon) then ("-emEpsilon " +  '"' + emEmEpsilon + '"') else ""} \
      ~{if defined(maxiterMaxiter) then ("-maxIter " +  '"' + maxiterMaxiter + '"') else ""} \
      ~{if defined(piPiPrior) then ("-piPrior " +  '"' + piPiPrior + '"') else ""} \
      ~{if defined(thetaThetaPrior) then ("-thetaPrior " +  '"' + thetaThetaPrior + '"') else ""} \
      ~{if defined(expExpTag) then ("-expTag " +  '"' + expExpTag + '"') else ""} \
      ~{if defined(outdirOutdir) then ("-outDir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(fileFileType) then ("-fileType " +  '"' + fileFileType + '"') else ""} \
      ~{if defined(alignAlignFile) then ("-alignFile " +  '"' + alignAlignFile + '"') else ""}
  >>>
}