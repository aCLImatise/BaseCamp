version 1.0

task Logcombiner {
  input {
    String? trees
    Float? decimal
    Int? burnin
    String? resample
    String? scale
    String? strip
    String? re_number
    String by
    String a_dotrambautateddotacdotuk
    String alexei_atcs_dot_auckland_do_tac_dot_nz
  }
  command <<<
    logcombiner \
      ~{by} \
      ~{a_dotrambautateddotacdotuk} \
      ~{alexei_atcs_dot_auckland_do_tac_dot_nz} \
      ~{if defined(trees) then ("-trees " +  '"' + trees + '"') else ""} \
      ~{if defined(decimal) then ("-decimal " +  '"' + decimal + '"') else ""} \
      ~{if defined(burnin) then ("-burnin " +  '"' + burnin + '"') else ""} \
      ~{if defined(resample) then ("-resample " +  '"' + resample + '"') else ""} \
      ~{if defined(scale) then ("-scale " +  '"' + scale + '"') else ""} \
      ~{if defined(strip) then ("-strip " +  '"' + strip + '"') else ""} \
      ~{if defined(re_number) then ("-renumber " +  '"' + re_number + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    trees: "this option to combine tree log files"
    decimal: "option converts numbers from scientific to decimal notation"
    burnin: "number of states to be considered as 'burn-in'"
    resample: "the log files to this frequency (the original sampling frequency must be a factor of this value)"
    scale: "scaling factor that will multiply any time units by this value"
    strip: "out all annotations (trees only)"
    re_number: "option renumbers output states consecutively"
    by: "Andrew Rambaut and Alexei J. Drummond"
    a_dotrambautateddotacdotuk: "Department of Computer Science"
    alexei_atcs_dot_auckland_do_tac_dot_nz: "dr.app.util.Arguments$ArgumentException: Unrecognized argument: --help"
  }
  output {
    File out_stdout = stdout()
  }
}