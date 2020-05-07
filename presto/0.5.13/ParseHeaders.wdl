version 1.0

task ParseHeaders.pyTable {
  input {
    Array[String]+ sS
    Array[String]+ oO
    String outdirOutdir
    String outOutName
    Boolean failedFailed
    String delimDelim
    Array[String]+ fF
  }
  command <<<
    ParseHeaders.py table \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(outOutName) then ("--outname " +  '"' + outOutName + '"') else ""} \
      ~{true="--failed" false="" failedFailed} \
      ~{if defined(delimDelim) then ("--delim " +  '"' + delimDelim + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""}
  >>>
}