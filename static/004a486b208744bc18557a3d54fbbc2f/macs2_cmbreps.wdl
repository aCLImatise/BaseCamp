version 1.0

task Macs2Cmbreps {
  input {
    Array[String]+ iI
    String methodMethod
    String outdirOutdir
    String ofileOfile
  }
  command <<<
    macs2 cmbreps \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(methodMethod) then ("--method " +  '"' + methodMethod + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(ofileOfile) then ("--ofile " +  '"' + ofileOfile + '"') else ""}
  >>>
}