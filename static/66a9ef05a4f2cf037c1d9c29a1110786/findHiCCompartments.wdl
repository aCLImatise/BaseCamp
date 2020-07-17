version 1.0

task FindHiCCompartments.pl {
  input {
    Boolean? opp
    Boolean? thresh
    String? bg
    Boolean? diff
    String? corr
    Boolean? corr_diff
    Boolean? min
    String pc_one_dot_txt_file
  }
  command <<<
    findHiCCompartments.pl \
      ~{pc_one_dot_txt_file} \
      ~{true="-opp" false="" opp} \
      ~{true="-thresh" false="" thresh} \
      ~{if defined(bg) then ("-bg " +  '"' + bg + '"') else ""} \
      ~{true="-diff" false="" diff} \
      ~{if defined(corr) then ("-corr " +  '"' + corr + '"') else ""} \
      ~{true="-corrDiff" false="" corr_diff} \
      ~{true="-min" false="" min}
  >>>
  parameter_meta {
    opp: "(return inactive, not active regions)"
    thresh: "<#> (threshold for active regions, default: 0)"
    bg: "(for differential domains)"
    diff: "<#> (difference threshold, default: 0.5)"
    corr: "(for differential domains)"
    corr_diff: "<#> (correlation threshold, default: 0.4)"
    min: "<#> (minimum size of domains, default: 100000)"
    pc_one_dot_txt_file: ""
  }
}