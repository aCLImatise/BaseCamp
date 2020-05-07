version 1.0

task ParseLog.py {
  input {
    Array[String]+ oO
    String outdirOutdir
    String outOutName
    String delimDelim
    Array[String]+ lL
    Array[String]+ fF
    String? tableTable
  }
  command <<<
    ParseLog.py \
      ~{tableTable} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(outOutName) then ("--outname " +  '"' + outOutName + '"') else ""} \
      ~{if defined(delimDelim) then ("--delim " +  '"' + delimDelim + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""}
  >>>
}