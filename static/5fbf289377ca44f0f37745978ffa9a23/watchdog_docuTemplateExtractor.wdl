version 1.0

task WatchdogdocuTemplateExtractor {
  command <<<
    watchdog_docuTemplateExtractor
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}