version 1.0

task Macs2Bdgbroadcall {
  input {
    String iIFile
    String cutCutOffPeak
    String cutCutOffLink
    Int minMinLength
    String lvl1Lvl1MaxGap
    String lvl2Lvl2MaxGap
    Boolean noNoTrackLine
    String outdirOutdir
    String ofileOfile
    String oOPrefix
  }
  command <<<
    macs2 bdgbroadcall \
      ~{if defined(iIFile) then ("--ifile " +  '"' + iIFile + '"') else ""} \
      ~{if defined(cutCutOffPeak) then ("--cutoff-peak " +  '"' + cutCutOffPeak + '"') else ""} \
      ~{if defined(cutCutOffLink) then ("--cutoff-link " +  '"' + cutCutOffLink + '"') else ""} \
      ~{if defined(minMinLength) then ("--min-length " +  '"' + minMinLength + '"') else ""} \
      ~{if defined(lvl1Lvl1MaxGap) then ("--lvl1-max-gap " +  '"' + lvl1Lvl1MaxGap + '"') else ""} \
      ~{if defined(lvl2Lvl2MaxGap) then ("--lvl2-max-gap " +  '"' + lvl2Lvl2MaxGap + '"') else ""} \
      ~{true="--no-trackline" false="" noNoTrackLine} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(ofileOfile) then ("--ofile " +  '"' + ofileOfile + '"') else ""} \
      ~{if defined(oOPrefix) then ("--o-prefix " +  '"' + oOPrefix + '"') else ""}
  >>>
}