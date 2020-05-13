version 1.0

task BwaAln.pl {
  input {
    Boolean outdirOutdir
    Boolean referenceReference
    Boolean sampleSample
    Boolean threadsThreads
    Boolean processProcess
    Boolean indexIndex
    Boolean manMan
    Boolean threadsThreads
    Boolean manMan
    Boolean processProcess
    String? bamBam
  }
  command <<<
    bwa_aln.pl \
      ~{bamBam} \
      ~{true="-outdir" false="" outdirOutdir} \
      ~{true="-reference" false="" referenceReference} \
      ~{true="-sample" false="" sampleSample} \
      ~{true="-threads" false="" threadsThreads} \
      ~{true="-process" false="" processProcess} \
      ~{true="-index" false="" indexIndex} \
      ~{true="-man" false="" manMan} \
      ~{true="-threads" false="" threadsThreads} \
      ~{true="-man" false="" manMan} \
      ~{true="-process" false="" processProcess}
  >>>
}