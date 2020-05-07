version 1.0

task BamToBw.pl {
  input {
    Boolean bamBam
    Boolean outdirOutdir
    Boolean referenceReference
    Boolean threadsThreads
    Boolean filterFilter
    Boolean processProcess
    Boolean indexIndex
    Boolean jobsJobs
    Boolean manMan
    Boolean threadsThreads
    Boolean manMan
    Boolean processProcess
  }
  command <<<
    bamToBw.pl \
      ~{true="-bam" false="" bamBam} \
      ~{true="-outdir" false="" outdirOutdir} \
      ~{true="-reference" false="" referenceReference} \
      ~{true="-threads" false="" threadsThreads} \
      ~{true="-filter" false="" filterFilter} \
      ~{true="-process" false="" processProcess} \
      ~{true="-index" false="" indexIndex} \
      ~{true="-jobs" false="" jobsJobs} \
      ~{true="-man" false="" manMan} \
      ~{true="-threads" false="" threadsThreads} \
      ~{true="-man" false="" manMan} \
      ~{true="-process" false="" processProcess}
  >>>
}