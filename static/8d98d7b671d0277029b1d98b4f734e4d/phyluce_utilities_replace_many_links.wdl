version 1.0

task PhyluceUtilitiesReplaceManyLinks {
  input {
    String inInDir
    String oldpathOldpath
    String newpathNewpath
    String outdirOutdir
  }
  command <<<
    phyluce_utilities_replace_many_links \
      ~{if defined(inInDir) then ("--indir " +  '"' + inInDir + '"') else ""} \
      ~{if defined(oldpathOldpath) then ("--oldpath " +  '"' + oldpathOldpath + '"') else ""} \
      ~{if defined(newpathNewpath) then ("--newpath " +  '"' + newpathNewpath + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""}
  >>>
}