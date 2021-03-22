version 1.0

task ExtractUSGenomespyGNUVIDReport {
  input {
    String extract_us_genomes_do_tpy
    String? states
    String gnu_vid_report
  }
  command <<<
    Extract_US_genomes_py GNUVID_report \
      ~{extract_us_genomes_do_tpy} \
      ~{states} \
      ~{gnu_vid_report}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gnuvid:2.2--0"
  }
  parameter_meta {
    extract_us_genomes_do_tpy: ""
    states: ""
    gnu_vid_report: ""
  }
  output {
    File out_stdout = stdout()
  }
}