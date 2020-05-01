version 1.0

task Satrap {
  input {
    Boolean maxMaxReads
    Boolean tagsTags
    Boolean t1T1
    Boolean t2T2
    Boolean qQ
    Boolean lenLen
    Boolean mateMatePair
    Boolean velvetVelvetPath
    Boolean oasesOasesPath
    Boolean strandStrandSpecific
    Boolean kmKmErSet
    Boolean oasesOasesKmEr
    Boolean t2T2
    Boolean qQ
    Boolean lenLen
    Boolean lL
    Boolean nN
    Boolean cC
    Boolean erodeErode
    Boolean zZ
    Boolean erosionErosion
    Boolean noNoClustering
  }
  command <<<
    satrap \
      ~{true="-max_reads" false="" maxMaxReads} \
      ~{true="-tags" false="" tagsTags} \
      ~{true="-t1" false="" t1T1} \
      ~{true="-t2" false="" t2T2} \
      ~{true="-q" false="" qQ} \
      ~{true="-len" false="" lenLen} \
      ~{true="-mate-pair" false="" mateMatePair} \
      ~{true="-velvet_path" false="" velvetVelvetPath} \
      ~{true="-oases_path" false="" oasesOasesPath} \
      ~{true="-strand_specific" false="" strandStrandSpecific} \
      ~{true="-kmer_set" false="" kmKmErSet} \
      ~{true="-oases_kmer" false="" oasesOasesKmEr} \
      ~{true="-T2" false="" t2T2} \
      ~{true="-Q" false="" qQ} \
      ~{true="-len" false="" lenLen} \
      ~{true="-l" false="" lL} \
      ~{true="-n" false="" nN} \
      ~{true="-c" false="" cC} \
      ~{true="-erode" false="" erodeErode} \
      ~{true="-z" false="" zZ} \
      ~{true="-erosion" false="" erosionErosion} \
      ~{true="-no_clustering" false="" noNoClustering}
  >>>
}