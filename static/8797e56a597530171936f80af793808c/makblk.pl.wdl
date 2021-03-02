version 1.0

task Makblkpl {
  input {
    Boolean? use_reduced_alphabet
    Boolean? x_dot_dot_dot
    Boolean? xcc
    Boolean? k
    Boolean? wx_dot
    String? bkn_vertical_line_bkp_vertical_line_bka
    String? d_vertical_line_p_vertical_lines
    String x_dot_grp
  }
  command <<<
    makblk_pl \
      ~{bkn_vertical_line_bkp_vertical_line_bka} \
      ~{d_vertical_line_p_vertical_lines} \
      ~{x_dot_grp} \
      ~{if (use_reduced_alphabet) then "-r" else ""} \
      ~{if (x_dot_dot_dot) then "-X..." else ""} \
      ~{if (xcc) then "-XCc" else ""} \
      ~{if (k) then "-K" else ""} \
      ~{if (wx_dot) then "-Wx." else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    use_reduced_alphabet: ":     use reduced alphabet"
    x_dot_dot_dot: "transferred to spaln"
    xcc: ":   c=0: conti seed; c=1: spaced seed; c>1: conti + (c-1) spaced seeds"
    k: ""
    wx_dot: ""
    bkn_vertical_line_bkp_vertical_line_bka: ""
    d_vertical_line_p_vertical_lines: ""
    x_dot_grp: ""
  }
  output {
    File out_stdout = stdout()
  }
}