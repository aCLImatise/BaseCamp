version 1.0

task LAdump {
  input {
    Boolean? c_ab_ae
    Boolean? d_there_differences
    Boolean? t_there_n
    Boolean? l_la_la
    Boolean? output_proper_overlaps
    Boolean? cdt_lo
  }
  command <<<
    LAdump \
      ~{true="-c" false="" c_ab_ae} \
      ~{true="-d" false="" d_there_differences} \
      ~{true="-t" false="" t_there_n} \
      ~{true="-l" false="" l_la_la} \
      ~{true="-o" false="" output_proper_overlaps} \
      ~{true="-cdtlo" false="" cdt_lo}
  >>>
  parameter_meta {
    c_ab_ae: ": C #ab #ae #bb #be - #a[#ab,#ae] aligns with #b^#o[#bb,#be]"
    d_there_differences: ": D #               - there are # differences in the LA"
    t_there_n: ": T #n              - there are #n trace point intervals for the LA (#d #y )^#n      - there are #d difference aligning the #y bp's of B with the next fixed-size interval of A"
    l_la_la: ": L #la #lb         - #la is the length of the a-read and #lb that of the b-read"
    output_proper_overlaps: ": Output proper overlaps only"
    cdt_lo: ""
  }
}