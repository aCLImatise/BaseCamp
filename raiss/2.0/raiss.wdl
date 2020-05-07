version 1.0

task Raiss {
  input {
    String chromChrom
    String gGWas
    String refRefFolder
    String ldLdFolder
    String zscoreZscoreFolder
    String outputOutputFolder
    String windowWindowSize
    String bufferBufferSize
    String l2L2Regularization
    String eigenEigenThreshold
    String r2R2Threshold
    String refRefPanelSuffix
  }
  command <<<
    raiss \
      ~{if defined(chromChrom) then ("--chrom " +  '"' + chromChrom + '"') else ""} \
      ~{if defined(gGWas) then ("--gwas " +  '"' + gGWas + '"') else ""} \
      ~{if defined(refRefFolder) then ("--ref-folder " +  '"' + refRefFolder + '"') else ""} \
      ~{if defined(ldLdFolder) then ("--ld-folder " +  '"' + ldLdFolder + '"') else ""} \
      ~{if defined(zscoreZscoreFolder) then ("--zscore-folder " +  '"' + zscoreZscoreFolder + '"') else ""} \
      ~{if defined(outputOutputFolder) then ("--output-folder " +  '"' + outputOutputFolder + '"') else ""} \
      ~{if defined(windowWindowSize) then ("--window-size " +  '"' + windowWindowSize + '"') else ""} \
      ~{if defined(bufferBufferSize) then ("--buffer-size " +  '"' + bufferBufferSize + '"') else ""} \
      ~{if defined(l2L2Regularization) then ("--l2-regularization " +  '"' + l2L2Regularization + '"') else ""} \
      ~{if defined(eigenEigenThreshold) then ("--eigen-threshold " +  '"' + eigenEigenThreshold + '"') else ""} \
      ~{if defined(r2R2Threshold) then ("--R2-threshold " +  '"' + r2R2Threshold + '"') else ""} \
      ~{if defined(refRefPanelSuffix) then ("--ref-panel-suffix " +  '"' + refRefPanelSuffix + '"') else ""}
  >>>
}