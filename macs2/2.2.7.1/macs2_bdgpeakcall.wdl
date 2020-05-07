version 1.0

task Macs2Bdgpeakcall {
  input {
    String iIFile
    String cutCutOff
    Int minMinLength
    Int maxMaxGap
    Boolean cutCutOffAnalysis
    Boolean noNoTrackLine
    String outdirOutdir
    String ofileOfile
    String oOPrefix
  }
  command <<<
    macs2 bdgpeakcall \
      ~{if defined(iIFile) then ("--ifile " +  '"' + iIFile + '"') else ""} \
      ~{if defined(cutCutOff) then ("--cutoff " +  '"' + cutCutOff + '"') else ""} \
      ~{if defined(minMinLength) then ("--min-length " +  '"' + minMinLength + '"') else ""} \
      ~{if defined(maxMaxGap) then ("--max-gap " +  '"' + maxMaxGap + '"') else ""} \
      ~{true="--cutoff-analysis" false="" cutCutOffAnalysis} \
      ~{true="--no-trackline" false="" noNoTrackLine} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(ofileOfile) then ("--ofile " +  '"' + ofileOfile + '"') else ""} \
      ~{if defined(oOPrefix) then ("--o-prefix " +  '"' + oOPrefix + '"') else ""}
  >>>
}