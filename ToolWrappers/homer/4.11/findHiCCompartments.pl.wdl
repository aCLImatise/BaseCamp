version 1.0

task FindHiCCompartmentspl {
  input {
    Boolean? opp
    Boolean? thresh
    File? bg
    Boolean? diff
    File? corr
    Boolean? corr_diff
    Boolean? min
    File pc_one_dot_txt_file
  }
  command <<<
    findHiCCompartments_pl \
      ~{pc_one_dot_txt_file} \
      ~{if (opp) then "-opp" else ""} \
      ~{if (thresh) then "-thresh" else ""} \
      ~{if defined(bg) then ("-bg " +  '"' + bg + '"') else ""} \
      ~{if (diff) then "-diff" else ""} \
      ~{if defined(corr) then ("-corr " +  '"' + corr + '"') else ""} \
      ~{if (corr_diff) then "-corrDiff" else ""} \
      ~{if (min) then "-min" else ""}
  >>>
  runtime {
    docker: "None"
  }
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
  output {
    File out_stdout = stdout()
  }
}