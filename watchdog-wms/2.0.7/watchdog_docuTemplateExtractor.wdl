version 1.0

task WatchdogdocuTemplateExtractor {
  command <<<
    watchdog_docuTemplateExtractor
  >>>
  output {
    File out_stdout = stdout()
  }
}