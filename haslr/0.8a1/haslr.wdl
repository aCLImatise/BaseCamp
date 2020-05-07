version 1.0

task Haslr.py {
  input {
    String outOut
    String genomeGenome
    String longLong
    String typeType
    Array[String]+ shortShort
    String threadsThreads
    String covCovLr
    String alnAlnBlock
    String alnAlnSim
    String edgeEdgeSup
    Int miniMiniAKmEr
    Int miniMiniASolid
    Int miniMiniAAsm
  }
  command <<<
    haslr.py \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(longLong) then ("--long " +  '"' + longLong + '"') else ""} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{if defined(shortShort) then ("--short " +  '"' + shortShort + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(covCovLr) then ("--cov-lr " +  '"' + covCovLr + '"') else ""} \
      ~{if defined(alnAlnBlock) then ("--aln-block " +  '"' + alnAlnBlock + '"') else ""} \
      ~{if defined(alnAlnSim) then ("--aln-sim " +  '"' + alnAlnSim + '"') else ""} \
      ~{if defined(edgeEdgeSup) then ("--edge-sup " +  '"' + edgeEdgeSup + '"') else ""} \
      ~{if defined(miniMiniAKmEr) then ("--minia-kmer " +  '"' + miniMiniAKmEr + '"') else ""} \
      ~{if defined(miniMiniASolid) then ("--minia-solid " +  '"' + miniMiniASolid + '"') else ""} \
      ~{if defined(miniMiniAAsm) then ("--minia-asm " +  '"' + miniMiniAAsm + '"') else ""}
  >>>
}