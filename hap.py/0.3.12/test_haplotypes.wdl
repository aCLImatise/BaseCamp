version 1.0

task TestHaplotypes {
  input {
    Boolean autoAutoStartDbg
    Boolean breakBreakExecPath
    Boolean buildBuildInfo
    Boolean detectDetectMemoryLeaks
    Boolean listListContent
    Boolean listListLabels
    Boolean logLogFormat
    Boolean logLogLevel
    Boolean logLogSink
    Boolean loggerLogger
    Boolean outputOutputFormat
    Boolean randomRandom
    Boolean reportReportFormat
    Boolean reportReportLevel
    Boolean reportReportMemoryLeaksTo
    Boolean reportReportSink
    Boolean runRunTest
    Boolean saveSavePattern
    Boolean showShowProgress
    Boolean waitWaitForDebugger
  }
  command <<<
    test_haplotypes \
      ~{true="--auto_start_dbg" false="" autoAutoStartDbg} \
      ~{true="--break_exec_path" false="" breakBreakExecPath} \
      ~{true="--build_info" false="" buildBuildInfo} \
      ~{true="--detect_memory_leaks" false="" detectDetectMemoryLeaks} \
      ~{true="--list_content" false="" listListContent} \
      ~{true="--list_labels" false="" listListLabels} \
      ~{true="--log_format" false="" logLogFormat} \
      ~{true="--log_level" false="" logLogLevel} \
      ~{true="--log_sink" false="" logLogSink} \
      ~{true="--logger" false="" loggerLogger} \
      ~{true="--output_format" false="" outputOutputFormat} \
      ~{true="--random" false="" randomRandom} \
      ~{true="--report_format" false="" reportReportFormat} \
      ~{true="--report_level" false="" reportReportLevel} \
      ~{true="--report_memory_leaks_to" false="" reportReportMemoryLeaksTo} \
      ~{true="--report_sink" false="" reportReportSink} \
      ~{true="--run_test" false="" runRunTest} \
      ~{true="--save_pattern" false="" saveSavePattern} \
      ~{true="--show_progress" false="" showShowProgress} \
      ~{true="--wait_for_debugger" false="" waitWaitForDebugger}
  >>>
}