version 1.0

task TinscanPrep {
  input {
    String targetTarget
    String queryQuery
    String aADir
    String bBDir
    String outdirOutdir
  }
  command <<<
    tinscan-prep \
      ~{if defined(targetTarget) then ("--target " +  '"' + targetTarget + '"') else ""} \
      ~{if defined(queryQuery) then ("--query " +  '"' + queryQuery + '"') else ""} \
      ~{if defined(aADir) then ("--adir " +  '"' + aADir + '"') else ""} \
      ~{if defined(bBDir) then ("--bdir " +  '"' + bBDir + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""}
  >>>
}