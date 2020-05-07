version 1.0

task AssignGenes.pyIgblast {
  input {
    Array[String]+ oO
    String outdirOutdir
    String outOutName
    String nprocNproc
    Array[String]+ sS
    String bB
    String organismOrganism
    String lociLoci
    String vdbVdb
    String ddbDdb
    String jdbJdb
    String formatFormat
    String execExec
  }
  command <<<
    AssignGenes.py igblast \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(outOutName) then ("--outname " +  '"' + outOutName + '"') else ""} \
      ~{if defined(nprocNproc) then ("--nproc " +  '"' + nprocNproc + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""} \
      ~{if defined(lociLoci) then ("--loci " +  '"' + lociLoci + '"') else ""} \
      ~{if defined(vdbVdb) then ("--vdb " +  '"' + vdbVdb + '"') else ""} \
      ~{if defined(ddbDdb) then ("--ddb " +  '"' + ddbDdb + '"') else ""} \
      ~{if defined(jdbJdb) then ("--jdb " +  '"' + jdbJdb + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(execExec) then ("--exec " +  '"' + execExec + '"') else ""}
  >>>
}