version 1.0

task Loganalyser {
  input {
    String? burnin
    String? short
    String? hpd
    String? ess
    String? stderr
    String? marginal
    Boolean? std
    String? input_file_name
    String? output_file_name
  }
  command <<<
    loganalyser \
      ~{input_file_name} \
      ~{output_file_name} \
      ~{if defined(burnin) then ("-burnin " +  '"' + burnin + '"') else ""} \
      ~{if defined(short) then ("-short " +  '"' + short + '"') else ""} \
      ~{if defined(hpd) then ("-hpd " +  '"' + hpd + '"') else ""} \
      ~{if defined(ess) then ("-ess " +  '"' + ess + '"') else ""} \
      ~{if defined(stderr) then ("-stdErr " +  '"' + stderr + '"') else ""} \
      ~{if defined(marginal) then ("-marginal " +  '"' + marginal + '"') else ""} \
      ~{true="-std" false="" std}
  >>>
  parameter_meta {
    burnin: "number of states to be considered as 'burn-in'"
    short: "this option to produce a short report"
    hpd: "this option to produce hpds for each trace"
    ess: "this option to produce ESSs for each trace"
    stderr: "this option to produce standard Error"
    marginal: "the trace to use to calculate the marginal likelihood"
    std: ""
    input_file_name: ""
    output_file_name: ""
  }
}