version 1.0

task PpaniniGeneCaller {
  input {
    String contigContig
    String fastFastQ
    String outputOutput
    String outputOutputBasename
    String unirefUniref
    Boolean resumeResume
    Boolean threadsThreads
    Boolean oneOneContig
  }
  command <<<
    ppanini_gene_caller \
      ~{if defined(contigContig) then ("--contig " +  '"' + contigContig + '"') else ""} \
      ~{if defined(fastFastQ) then ("--fastq " +  '"' + fastFastQ + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(outputOutputBasename) then ("--output-basename " +  '"' + outputOutputBasename + '"') else ""} \
      ~{if defined(unirefUniref) then ("--uniref " +  '"' + unirefUniref + '"') else ""} \
      ~{true="--resume" false="" resumeResume} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="--one-contig" false="" oneOneContig}
  >>>
}