version 1.0

task SplitSeq.pySelect {
  input {
    Array[String]+ sS
    Array[String]+ oO
    String outdirOutdir
    String outOutName
    Boolean fastFastA
    String delimDelim
    String fF
    Array[String]+ uU
    String tT
    Boolean notNot
  }
  command <<<
    SplitSeq.py select \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(outOutName) then ("--outname " +  '"' + outOutName + '"') else ""} \
      ~{true="--fasta" false="" fastFastA} \
      ~{if defined(delimDelim) then ("--delim " +  '"' + delimDelim + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(uU) then ("-u " +  '"' + uU + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="--not" false="" notNot}
  >>>
}