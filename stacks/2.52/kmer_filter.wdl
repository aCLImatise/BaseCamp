version 1.0

task KmerFilter {
  input {
    Boolean rareRare
    Boolean abundantAbundant
    String kKLen
    String maxMaxKFreq
    String minMinLim
    String maxMaxLim
    String normalizeNormalize
    Boolean writeWriteKFreq
    Boolean kKDist
    File readReadKFreq
  }
  command <<<
    kmer_filter \
      ~{true="--rare" false="" rareRare} \
      ~{true="--abundant" false="" abundantAbundant} \
      ~{if defined(kKLen) then ("--k-len " +  '"' + kKLen + '"') else ""} \
      ~{if defined(maxMaxKFreq) then ("--max-k-freq " +  '"' + maxMaxKFreq + '"') else ""} \
      ~{if defined(minMinLim) then ("--min-lim " +  '"' + minMinLim + '"') else ""} \
      ~{if defined(maxMaxLim) then ("--max-lim " +  '"' + maxMaxLim + '"') else ""} \
      ~{if defined(normalizeNormalize) then ("--normalize " +  '"' + normalizeNormalize + '"') else ""} \
      ~{true="--write-k-freq" false="" writeWriteKFreq} \
      ~{true="--k-dist" false="" kKDist} \
      ~{if defined(readReadKFreq) then ("--read-k-freq " +  '"' + readReadKFreq + '"') else ""}
  >>>
}