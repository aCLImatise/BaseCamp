version 1.0

task ConvertHeaders.pySra {
  input {
    Array[String]+ sS
    Array[String]+ oO
    String outdirOutdir
    String outOutName
    Boolean failedFailed
    Boolean fastFastA
    String delimDelim
  }
  command <<<
    ConvertHeaders.py sra \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(outOutName) then ("--outname " +  '"' + outOutName + '"') else ""} \
      ~{true="--failed" false="" failedFailed} \
      ~{true="--fasta" false="" fastFastA} \
      ~{if defined(delimDelim) then ("--delim " +  '"' + delimDelim + '"') else ""}
  >>>
}