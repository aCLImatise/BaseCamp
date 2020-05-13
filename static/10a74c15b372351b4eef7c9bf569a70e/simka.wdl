version 1.0

task Simka {
  input {
    Boolean inIn
    Boolean outOut
    Boolean outOutTmp
    Boolean keepKeepTmp
    Boolean dataDataInfo
    Boolean verboseVerbose
    Boolean simpleSimpleDist
    Boolean complexComplexDist
    Boolean kmKmErSize
    Boolean abundanceAbundanceMin
    Boolean abundanceAbundanceMax
    Boolean kmKmErShannonIndex
    Boolean maxMaxReads
    Boolean minMinReadSize
    Boolean minMinShannonIndex
    Boolean nbNbCores
    Boolean maxMaxMemory
    Boolean maxMaxCount
    Boolean maxMaxMerge
    Boolean countCountCmd
    Boolean mergeMergeCmd
    Boolean countCountFile
    Boolean mergeMergeFile
  }
  command <<<
    simka \
      ~{true="-in" false="" inIn} \
      ~{true="-out" false="" outOut} \
      ~{true="-out-tmp" false="" outOutTmp} \
      ~{true="-keep-tmp" false="" keepKeepTmp} \
      ~{true="-data-info" false="" dataDataInfo} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{true="-simple-dist" false="" simpleSimpleDist} \
      ~{true="-complex-dist" false="" complexComplexDist} \
      ~{true="-kmer-size" false="" kmKmErSize} \
      ~{true="-abundance-min" false="" abundanceAbundanceMin} \
      ~{true="-abundance-max" false="" abundanceAbundanceMax} \
      ~{true="-kmer-shannon-index" false="" kmKmErShannonIndex} \
      ~{true="-max-reads" false="" maxMaxReads} \
      ~{true="-min-read-size" false="" minMinReadSize} \
      ~{true="-min-shannon-index" false="" minMinShannonIndex} \
      ~{true="-nb-cores" false="" nbNbCores} \
      ~{true="-max-memory" false="" maxMaxMemory} \
      ~{true="-max-count" false="" maxMaxCount} \
      ~{true="-max-merge" false="" maxMaxMerge} \
      ~{true="-count-cmd" false="" countCountCmd} \
      ~{true="-merge-cmd" false="" mergeMergeCmd} \
      ~{true="-count-file" false="" countCountFile} \
      ~{true="-merge-file" false="" mergeMergeFile}
  >>>
}