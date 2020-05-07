version 1.0

task BwaMem.pl {
  input {
    Boolean outdirOutdir
    Boolean referenceReference
    Boolean sampleSample
    Boolean threadsThreads
    Boolean fragmentFragment
    Boolean noNoMarkDup
    Boolean cramCram
    Boolean scrambleScramble
    Boolean bwaBwa
    Boolean mapMapThreads
    Boolean processProcess
    Boolean indexIndex
    Boolean bwaBwaPl
    Boolean jobsJobs
    Boolean manMan
  }
  command <<<
    bwa_mem.pl \
      ~{true="-outdir" false="" outdirOutdir} \
      ~{true="-reference" false="" referenceReference} \
      ~{true="-sample" false="" sampleSample} \
      ~{true="-threads" false="" threadsThreads} \
      ~{true="-fragment" false="" fragmentFragment} \
      ~{true="-nomarkdup" false="" noNoMarkDup} \
      ~{true="-cram" false="" cramCram} \
      ~{true="-scramble" false="" scrambleScramble} \
      ~{true="-bwa" false="" bwaBwa} \
      ~{true="-map_threads" false="" mapMapThreads} \
      ~{true="-process" false="" processProcess} \
      ~{true="-index" false="" indexIndex} \
      ~{true="-bwa_pl" false="" bwaBwaPl} \
      ~{true="-jobs" false="" jobsJobs} \
      ~{true="-man" false="" manMan}
  >>>
}