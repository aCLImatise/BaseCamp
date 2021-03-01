version 1.0

task Loganalyser {
  input {
    Int? burnin
    String? short
    String? hpd
    String? ess
    String? stderr
    String? marginal
    String by
    String a_dotrambautateddotacdotuk
    String alexei_atcs_dot_auckland_do_tac_dot_nz
  }
  command <<<
    loganalyser \
      ~{by} \
      ~{a_dotrambautateddotacdotuk} \
      ~{alexei_atcs_dot_auckland_do_tac_dot_nz} \
      ~{if defined(burnin) then ("-burnin " +  '"' + burnin + '"') else ""} \
      ~{if defined(short) then ("-short " +  '"' + short + '"') else ""} \
      ~{if defined(hpd) then ("-hpd " +  '"' + hpd + '"') else ""} \
      ~{if defined(ess) then ("-ess " +  '"' + ess + '"') else ""} \
      ~{if defined(stderr) then ("-stdErr " +  '"' + stderr + '"') else ""} \
      ~{if defined(marginal) then ("-marginal " +  '"' + marginal + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    burnin: "number of states to be considered as 'burn-in'"
    short: "this option to produce a short report"
    hpd: "this option to produce hpds for each trace"
    ess: "this option to produce ESSs for each trace"
    stderr: "this option to produce standard Error"
    marginal: "the trace to use to calculate the marginal likelihood"
    by: "Andrew Rambaut and Alexei J. Drummond"
    a_dotrambautateddotacdotuk: "Department of Computer Science"
    alexei_atcs_dot_auckland_do_tac_dot_nz: "dr.app.util.Arguments$ArgumentException: Unrecognized argument: --help"
  }
  output {
    File out_stdout = stdout()
  }
}