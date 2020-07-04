version 1.0

task _giftogd2 {
  input {
    String gift_ogd_two
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
  parameter_meta {
    gift_ogd_two: ""
    filename_do_tgif: ""
    filename_dot_gd_two: ""
    cs: ""
    fmt: ""
  }
}