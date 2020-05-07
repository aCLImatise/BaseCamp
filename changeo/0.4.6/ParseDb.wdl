version 1.0

task ParseDb.pySplit {
  input {
    Array[String]+ dD
    String outdirOutdir
    String outOutName
    String fF
    String numNum
  }
  command <<<
    ParseDb.py split \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(outOutName) then ("--outname " +  '"' + outOutName + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(numNum) then ("--num " +  '"' + numNum + '"') else ""}
  >>>
}