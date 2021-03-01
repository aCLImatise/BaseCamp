version 1.0

task Giftogd2 {
  input {
    Int gift_ogd_two
    File filename_do_tgif
    File filename_dot_gd_two
    String cs
    String fmt
  }
  command <<<
    _giftogd2 \
      ~{gift_ogd_two} \
      ~{filename_do_tgif} \
      ~{filename_dot_gd_two} \
      ~{cs} \
      ~{fmt}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gift_ogd_two: ""
    filename_do_tgif: ""
    filename_dot_gd_two: ""
    cs: ""
    fmt: ""
  }
  output {
    File out_stdout = stdout()
  }
}