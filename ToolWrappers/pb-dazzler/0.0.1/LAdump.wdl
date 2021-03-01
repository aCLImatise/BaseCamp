version 1.0

task LAdump {
  input {
    Boolean? c_ae_be
    Boolean? d_there_differences
    Boolean? t_there_trace
    Boolean? l_la_lb
    Boolean? output_proper_overlaps
    Boolean? cdt_lo
  }
  command <<<
    LAdump \
      ~{if (c_ae_be) then "-c" else ""} \
      ~{if (d_there_differences) then "-d" else ""} \
      ~{if (t_there_trace) then "-t" else ""} \
      ~{if (l_la_lb) then "-l" else ""} \
      ~{if (output_proper_overlaps) then "-o" else ""} \
      ~{if (cdt_lo) then "-cdtlo" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    c_ae_be: ": C #ab #ae #bb #be - #a[#ab,#ae] aligns with #b^#o[#bb,#be]"
    d_there_differences: ": D #               - there are # differences in the LA"
    t_there_trace: ": T #n              - there are #n trace point intervals for the LA\\n(#d #y )^#n      - there are #d difference aligning the #y bp's of B with the\\nnext fixed-size interval of A"
    l_la_lb: ": L #la #lb         - #la is the length of the a-read and #lb that of the b-read"
    output_proper_overlaps: ": Output proper overlaps only"
    cdt_lo: ""
  }
  output {
    File out_stdout = stdout()
  }
}