version 1.0

task Macs2Bdgcmp {
  input {
    String outdirOutdir
    String oOPrefix
    Array[String]+ ofileOfile
  }
  command <<<
    macs2 bdgcmp \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(oOPrefix) then ("--o-prefix " +  '"' + oOPrefix + '"') else ""} \
      ~{if defined(ofileOfile) then ("--ofile " +  '"' + ofileOfile + '"') else ""}
  >>>
}