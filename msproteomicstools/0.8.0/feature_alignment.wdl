version 1.0

task FeatureAlignment.py {
  input {
    Array[String]+ inIn
    Boolean fileFileFormat
    String outOut
    Boolean outOutMatrix
    Boolean outOutIds
    Boolean outOutMeta
    Boolean fdrFdrCutOff
    Boolean targetTargetFdr
    Boolean maxMaxFdrQuality
    Boolean maxMaxRtDiff
    Boolean isoIsoMaxRtDiff
    Boolean fracFracSelected
    String methodMethod
    Boolean verbosityVerbosity
    Boolean matrixMatrixOutputMethod
    String realignRealignMethod
    Boolean forceForce
    Boolean mstMst
    Boolean mstMst
    Boolean mstMst
    Boolean mstMst
    Boolean dDScoreCutOff
    Boolean nrNrHighConfExp
    Int readReadMethod
    String tmpdirTmpdir
    Boolean alignmentAlignmentScore
    Boolean realignRealignRuns
    Boolean useUseExternalR
  }
  command <<<
    feature_alignment.py \
      ~{if defined(inIn) then ("--in " +  '"' + inIn + '"') else ""} \
      ~{true="--file_format" false="" fileFileFormat} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{true="--out_matrix" false="" outOutMatrix} \
      ~{true="--out_ids" false="" outOutIds} \
      ~{true="--out_meta" false="" outOutMeta} \
      ~{true="--fdr_cutoff" false="" fdrFdrCutOff} \
      ~{true="--target_fdr" false="" targetTargetFdr} \
      ~{true="--max_fdr_quality" false="" maxMaxFdrQuality} \
      ~{true="--max_rt_diff" false="" maxMaxRtDiff} \
      ~{true="--iso_max_rt_diff" false="" isoIsoMaxRtDiff} \
      ~{true="--frac_selected" false="" fracFracSelected} \
      ~{if defined(methodMethod) then ("--method " +  '"' + methodMethod + '"') else ""} \
      ~{true="--verbosity" false="" verbosityVerbosity} \
      ~{true="--matrix_output_method" false="" matrixMatrixOutputMethod} \
      ~{if defined(realignRealignMethod) then ("--realign_method " +  '"' + realignRealignMethod + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{true="--mst" false="" mstMst} \
      ~{true="--mst" false="" mstMst} \
      ~{true="--mst" false="" mstMst} \
      ~{true="--mst" false="" mstMst} \
      ~{true="--dscore_cutoff" false="" dDScoreCutOff} \
      ~{true="--nr_high_conf_exp" false="" nrNrHighConfExp} \
      ~{if defined(readReadMethod) then ("--readmethod " +  '"' + readReadMethod + '"') else ""} \
      ~{if defined(tmpdirTmpdir) then ("--tmpdir " +  '"' + tmpdirTmpdir + '"') else ""} \
      ~{true="--alignment_score" false="" alignmentAlignmentScore} \
      ~{true="--realign_runs" false="" realignRealignRuns} \
      ~{true="--use_external_r" false="" useUseExternalR}
  >>>
}