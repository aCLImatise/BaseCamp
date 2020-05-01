version 1.0

task Kounta {
  input {
    Boolean fofFofN
    Boolean kmKmEr
    Boolean minMinFreq
    Boolean outOut
    Boolean ramRam
    Boolean tempdirTempdir
    Boolean threadsThreads
  }
  command <<<
    kounta \
      ~{true="--fofn" false="" fofFofN} \
      ~{true="--kmer" false="" kmKmEr} \
      ~{true="--minfreq" false="" minMinFreq} \
      ~{true="--out" false="" outOut} \
      ~{true="--ram" false="" ramRam} \
      ~{true="--tempdir" false="" tempdirTempdir} \
      ~{true="--threads" false="" threadsThreads}
  >>>
}