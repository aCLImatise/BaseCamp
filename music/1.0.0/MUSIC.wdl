version 1.0

task MUSIC {
  input {
    Boolean preprocessPreprocess
    Boolean sortSortReads
    Boolean removeRemoveDuplicates
    Boolean getGetMultiscaleBroadErs
    Boolean getGetMultiscalePunctateErs
    Boolean getGetTfPeaks
    Boolean writeWriteMsDecomposition
    Boolean writeWriteLogRSignal
    Boolean getGetPerWinPValsVsFc
    Boolean getGetScaleSpectrum
    Boolean getGetMultiscaleMusic
    Boolean chipChip
    Boolean controlControl
    Boolean mappMapp
    Boolean beginBeginL
    Boolean endEndL
    Boolean stepStep
    Boolean lLBin
    Boolean lLMapp
    Boolean mappMappThr
    Boolean lLFrag
    Boolean lLC
    Boolean lLP
    Boolean sigmaSigma
    Boolean gammaGamma
    Boolean qQVal
    Boolean lLWinMin
    Boolean lLWinMax
    Boolean lLWinStep
    String? argumentsArguments
  }
  command <<<
    MUSIC \
      ~{argumentsArguments} \
      ~{true="-preprocess" false="" preprocessPreprocess} \
      ~{true="-sort_reads" false="" sortSortReads} \
      ~{true="-remove_duplicates" false="" removeRemoveDuplicates} \
      ~{true="-get_multiscale_broad_ERs" false="" getGetMultiscaleBroadErs} \
      ~{true="-get_multiscale_punctate_ERs" false="" getGetMultiscalePunctateErs} \
      ~{true="-get_TF_peaks" false="" getGetTfPeaks} \
      ~{true="-write_MS_decomposition" false="" writeWriteMsDecomposition} \
      ~{true="-write_logR_signal" false="" writeWriteLogRSignal} \
      ~{true="-get_per_win_p_vals_vs_FC" false="" getGetPerWinPValsVsFc} \
      ~{true="-get_scale_spectrum" false="" getGetScaleSpectrum} \
      ~{true="-get_multiscale_music" false="" getGetMultiscaleMusic} \
      ~{true="-chip" false="" chipChip} \
      ~{true="-control" false="" controlControl} \
      ~{true="-mapp" false="" mappMapp} \
      ~{true="-begin_l" false="" beginBeginL} \
      ~{true="-end_l" false="" endEndL} \
      ~{true="-step" false="" stepStep} \
      ~{true="-l_bin" false="" lLBin} \
      ~{true="-l_mapp" false="" lLMapp} \
      ~{true="-mapp_thr" false="" mappMappThr} \
      ~{true="-l_frag" false="" lLFrag} \
      ~{true="-l_c" false="" lLC} \
      ~{true="-l_p" false="" lLP} \
      ~{true="-sigma" false="" sigmaSigma} \
      ~{true="-gamma" false="" gammaGamma} \
      ~{true="-q_val" false="" qQVal} \
      ~{true="-l_win_min" false="" lLWinMin} \
      ~{true="-l_win_max" false="" lLWinMax} \
      ~{true="-l_win_step" false="" lLWinStep}
  >>>
}