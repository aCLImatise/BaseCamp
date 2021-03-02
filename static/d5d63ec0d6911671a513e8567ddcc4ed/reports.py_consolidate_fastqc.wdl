version 1.0

task ReportspyConsolidateFastqc {
  input {
    String reports_do_tpy
    String subcommand
    String consolidate_fast_qc
  }
  command <<<
    reports_py consolidate_fastqc \
      ~{reports_do_tpy} \
      ~{subcommand} \
      ~{consolidate_fast_qc}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reports_do_tpy: ""
    subcommand: ""
    consolidate_fast_qc: ""
  }
  output {
    File out_stdout = stdout()
  }
}