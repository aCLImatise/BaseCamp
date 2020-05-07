version 1.0

task UnicyclerCheck {
  input {
    String samSam
    String refRef
    String readsReads
    Int minMinLen
    String errorErrorWindowSize
    String depthDepthWindowSize
    String errorErrorRateThreshold
    String depthDepthPVal
    String windowWindowTables
    String baseBaseTables
    String htmlHtml
    String threadsThreads
    String verbosityVerbosity
  }
  command <<<
    unicycler_check \
      ~{if defined(samSam) then ("--sam " +  '"' + samSam + '"') else ""} \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{if defined(readsReads) then ("--reads " +  '"' + readsReads + '"') else ""} \
      ~{if defined(minMinLen) then ("--min_len " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(errorErrorWindowSize) then ("--error_window_size " +  '"' + errorErrorWindowSize + '"') else ""} \
      ~{if defined(depthDepthWindowSize) then ("--depth_window_size " +  '"' + depthDepthWindowSize + '"') else ""} \
      ~{if defined(errorErrorRateThreshold) then ("--error_rate_threshold " +  '"' + errorErrorRateThreshold + '"') else ""} \
      ~{if defined(depthDepthPVal) then ("--depth_p_val " +  '"' + depthDepthPVal + '"') else ""} \
      ~{if defined(windowWindowTables) then ("--window_tables " +  '"' + windowWindowTables + '"') else ""} \
      ~{if defined(baseBaseTables) then ("--base_tables " +  '"' + baseBaseTables + '"') else ""} \
      ~{if defined(htmlHtml) then ("--html " +  '"' + htmlHtml + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""}
  >>>
}