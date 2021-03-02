version 1.0

task TrinotateReportWriterpl {
  command <<<
    Trinotate_report_writer_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}