version 1.0

task MoffAll.py {
  input {
    String locLocIn
    Boolean tsvTsvList
    Boolean rawRawList
    String sampleSample
    String extExt
    String logLogLabel
    String wWFilt
    Boolean outOutFlag
    Boolean wWComb
    String toToL
    String xicXicLength
    String rtRtPeakWin
    String rtRtPeakWinMatch
    String rawRawRepo
    String locLocOut
    String rtRtFeatFile
    Boolean peptidePeptideSummary
    String tagTagPepSum
    Boolean matchMatchFilter
    String ptmPtmFile
    String quantileQuantileThrFiltering
    String sampleSampleSize
    String mbrMbr
    String cpuCpu
  }
  command <<<
    moff_all.py \
      ~{if defined(locLocIn) then ("--loc_in " +  '"' + locLocIn + '"') else ""} \
      ~{true="--tsv_list" false="" tsvTsvList} \
      ~{true="--raw_list" false="" rawRawList} \
      ~{if defined(sampleSample) then ("--sample " +  '"' + sampleSample + '"') else ""} \
      ~{if defined(extExt) then ("--ext " +  '"' + extExt + '"') else ""} \
      ~{if defined(logLogLabel) then ("--log_label " +  '"' + logLogLabel + '"') else ""} \
      ~{if defined(wWFilt) then ("--w_filt " +  '"' + wWFilt + '"') else ""} \
      ~{true="--out_flag" false="" outOutFlag} \
      ~{true="--w_comb" false="" wWComb} \
      ~{if defined(toToL) then ("--tol " +  '"' + toToL + '"') else ""} \
      ~{if defined(xicXicLength) then ("--xic_length " +  '"' + xicXicLength + '"') else ""} \
      ~{if defined(rtRtPeakWin) then ("--rt_peak_win " +  '"' + rtRtPeakWin + '"') else ""} \
      ~{if defined(rtRtPeakWinMatch) then ("--rt_peak_win_match " +  '"' + rtRtPeakWinMatch + '"') else ""} \
      ~{if defined(rawRawRepo) then ("--raw_repo " +  '"' + rawRawRepo + '"') else ""} \
      ~{if defined(locLocOut) then ("--loc_out " +  '"' + locLocOut + '"') else ""} \
      ~{if defined(rtRtFeatFile) then ("--rt_feat_file " +  '"' + rtRtFeatFile + '"') else ""} \
      ~{true="--peptide_summary" false="" peptidePeptideSummary} \
      ~{if defined(tagTagPepSum) then ("--tag_pepsum " +  '"' + tagTagPepSum + '"') else ""} \
      ~{true="--match_filter" false="" matchMatchFilter} \
      ~{if defined(ptmPtmFile) then ("--ptm_file " +  '"' + ptmPtmFile + '"') else ""} \
      ~{if defined(quantileQuantileThrFiltering) then ("--quantile_thr_filtering " +  '"' + quantileQuantileThrFiltering + '"') else ""} \
      ~{if defined(sampleSampleSize) then ("--sample_size " +  '"' + sampleSampleSize + '"') else ""} \
      ~{if defined(mbrMbr) then ("--mbr " +  '"' + mbrMbr + '"') else ""} \
      ~{if defined(cpuCpu) then ("--cpu " +  '"' + cpuCpu + '"') else ""}
  >>>
}