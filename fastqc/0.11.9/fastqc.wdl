version 1.0

task Fastqc {
  input {
    Boolean outdirOutdir
    Boolean casaCasaVa
    Boolean nanoNano
    Boolean noNoFilter
    Boolean extractExtract
    Boolean javaJava
    Boolean noNoExtract
    Boolean nogroupNogroup
    Boolean minMinLength
    Boolean formatFormat
    Boolean threadsThreads
    Boolean cC
    Boolean contaminantsContaminants
    Boolean aA
    Boolean adaptersAdapters
    Boolean lL
    Boolean limitsLimits
    Boolean kmKmErs
    Boolean quietQuiet
    Boolean dirDir
  }
  command <<<
    fastqc \
      ~{true="--outdir" false="" outdirOutdir} \
      ~{true="--casava" false="" casaCasaVa} \
      ~{true="--nano" false="" nanoNano} \
      ~{true="--nofilter" false="" noNoFilter} \
      ~{true="--extract" false="" extractExtract} \
      ~{true="--java" false="" javaJava} \
      ~{true="--noextract" false="" noNoExtract} \
      ~{true="--nogroup" false="" nogroupNogroup} \
      ~{true="--min_length" false="" minMinLength} \
      ~{true="--format" false="" formatFormat} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="-c" false="" cC} \
      ~{true="--contaminants" false="" contaminantsContaminants} \
      ~{true="-a" false="" aA} \
      ~{true="--adapters" false="" adaptersAdapters} \
      ~{true="-l" false="" lL} \
      ~{true="--limits" false="" limitsLimits} \
      ~{true="--kmers" false="" kmKmErs} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--dir" false="" dirDir}
  >>>
}