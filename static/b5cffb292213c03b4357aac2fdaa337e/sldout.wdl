version 1.0

task Sldout {
  input {
    String? csv_vertical_line_txt
    File filename_dots_ld
  }
  command <<<
    sldout \
      ~{csv_vertical_line_txt} \
      ~{filename_dots_ld}
  >>>
  runtime {
    docker: "quay.io/biocontainers/proteowizard:3.0.9992"
  }
  parameter_meta {
    csv_vertical_line_txt: ""
    filename_dots_ld: ""
  }
  output {
    File out_stdout = stdout()
  }
}