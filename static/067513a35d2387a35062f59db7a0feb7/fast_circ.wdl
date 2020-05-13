version 1.0

task FastCirc.py {
  input {
    String refRef
    String genomeGenome
    String gtfGtf
    String tT
    Boolean pePe
    String fastFastQ
    String paPaPlus
    String threadThread
    String outputOutput
    String? parseParse
    String? fusionFusion
  }
  command <<<
    fast_circ.py \
      ~{parseParse} \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(gtfGtf) then ("--gtf " +  '"' + gtfGtf + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="--pe" false="" pePe} \
      ~{if defined(fastFastQ) then ("--fastq " +  '"' + fastFastQ + '"') else ""} \
      ~{if defined(paPaPlus) then ("--pAplus " +  '"' + paPaPlus + '"') else ""} \
      ~{if defined(threadThread) then ("--thread " +  '"' + threadThread + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{fusionFusion}
  >>>
}