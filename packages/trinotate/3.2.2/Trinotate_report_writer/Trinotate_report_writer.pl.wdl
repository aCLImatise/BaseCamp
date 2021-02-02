version 1.0

task TrinotateReportWriterpl {
  command <<<
    Trinotate_report_writer_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}