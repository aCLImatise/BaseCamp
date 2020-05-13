version 1.0

task Macs2Bdgopt {
  input {
    String iIFile
    String methodMethod
    Boolean pP
    String outdirOutdir
    String ofileOfile
  }
  command <<<
    macs2 bdgopt \
      ~{if defined(iIFile) then ("--ifile " +  '"' + iIFile + '"') else ""} \
      ~{if defined(methodMethod) then ("--method " +  '"' + methodMethod + '"') else ""} \
      ~{true="-p" false="" pP} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(ofileOfile) then ("--ofile " +  '"' + ofileOfile + '"') else ""}
  >>>
}