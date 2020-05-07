version 1.0

task ClusterSets.pyBarcode {
  input {
    Array[String]+ sS
    Array[String]+ oO
    String outdirOutdir
    String outOutName
    Boolean fastFastA
    String delimDelim
    String nprocNproc
    String kK
    String identIdent
    Int lengthLength
    String prefixPrefix
    String clusterCluster
    String execExec
    String fF
  }
  command <<<
    ClusterSets.py barcode \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(outOutName) then ("--outname " +  '"' + outOutName + '"') else ""} \
      ~{true="--fasta" false="" fastFastA} \
      ~{if defined(delimDelim) then ("--delim " +  '"' + delimDelim + '"') else ""} \
      ~{if defined(nprocNproc) then ("--nproc " +  '"' + nprocNproc + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(identIdent) then ("--ident " +  '"' + identIdent + '"') else ""} \
      ~{if defined(lengthLength) then ("--length " +  '"' + lengthLength + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(clusterCluster) then ("--cluster " +  '"' + clusterCluster + '"') else ""} \
      ~{if defined(execExec) then ("--exec " +  '"' + execExec + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""}
  >>>
}