version 1.0

task Megagta.py {
  input {
    Boolean rR
    Boolean gG
    Boolean cC
    Boolean kK
    Boolean pP
    Boolean lL
    Boolean maxMaxTipLen
    Boolean noNoMercy
    Boolean mM
    Boolean memMemFlag
    Boolean useUseGpu
    Boolean gpuGpuMem
    Boolean tT
    Boolean oO
    Boolean minMinContigLen
    Boolean keepKeepTmpFiles
    Boolean continueContinue
    Boolean vV
    Boolean verboseVerbose
  }
  command <<<
    megagta.py \
      ~{true="-r" false="" rR} \
      ~{true="-g" false="" gG} \
      ~{true="-c" false="" cC} \
      ~{true="-k" false="" kK} \
      ~{true="-p" false="" pP} \
      ~{true="-l" false="" lL} \
      ~{true="--max-tip-len" false="" maxMaxTipLen} \
      ~{true="--no-mercy" false="" noNoMercy} \
      ~{true="-m" false="" mM} \
      ~{true="--mem-flag" false="" memMemFlag} \
      ~{true="--use-gpu" false="" useUseGpu} \
      ~{true="--gpu-mem" false="" gpuGpuMem} \
      ~{true="-t" false="" tT} \
      ~{true="-o" false="" oO} \
      ~{true="--min-contig-len" false="" minMinContigLen} \
      ~{true="--keep-tmp-files" false="" keepKeepTmpFiles} \
      ~{true="--continue" false="" continueContinue} \
      ~{true="-v" false="" vV} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}