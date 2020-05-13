version 1.0

task TinscanFind {
  input {
    String inInFile
    String outdirOutdir
    String gffGffOut
    Boolean noNoFlanks
    Int maxMaxTsd
    Int maxMaxInsert
    Int minMinInsert
    String qQGap
    Int miniMiniDent
    Int maxMaxIdentDiff
  }
  command <<<
    tinscan-find \
      ~{if defined(inInFile) then ("--infile " +  '"' + inInFile + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(gffGffOut) then ("--gffOut " +  '"' + gffGffOut + '"') else ""} \
      ~{true="--noflanks" false="" noNoFlanks} \
      ~{if defined(maxMaxTsd) then ("--maxTSD " +  '"' + maxMaxTsd + '"') else ""} \
      ~{if defined(maxMaxInsert) then ("--maxInsert " +  '"' + maxMaxInsert + '"') else ""} \
      ~{if defined(minMinInsert) then ("--minInsert " +  '"' + minMinInsert + '"') else ""} \
      ~{if defined(qQGap) then ("--qGap " +  '"' + qQGap + '"') else ""} \
      ~{if defined(miniMiniDent) then ("--minIdent " +  '"' + miniMiniDent + '"') else ""} \
      ~{if defined(maxMaxIdentDiff) then ("--maxIdentDiff " +  '"' + maxMaxIdentDiff + '"') else ""}
  >>>
}