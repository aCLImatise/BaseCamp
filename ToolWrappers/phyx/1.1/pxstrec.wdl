version 1.0

task Pxstrec {
  input {
    File? data_f
    Boolean? data_wide
    Boolean? data_z
    File? tree_f
    File? conf
    File? out_an_c
    File? out_st_num
    File? out_st_num_any
    File? out_st_tim
    String? periods
    File? log_f
    Boolean? citation
  }
  command <<<
    pxstrec \
      ~{if defined(data_f) then ("--dataf " +  '"' + data_f + '"') else ""} \
      ~{if (data_wide) then "--datawide" else ""} \
      ~{if (data_z) then "--dataz" else ""} \
      ~{if defined(tree_f) then ("--treef " +  '"' + tree_f + '"') else ""} \
      ~{if defined(conf) then ("--conf " +  '"' + conf + '"') else ""} \
      ~{if defined(out_an_c) then ("--outanc " +  '"' + out_an_c + '"') else ""} \
      ~{if defined(out_st_num) then ("--outstnum " +  '"' + out_st_num + '"') else ""} \
      ~{if defined(out_st_num_any) then ("--outstnumany " +  '"' + out_st_num_any + '"') else ""} \
      ~{if defined(out_st_tim) then ("--outsttim " +  '"' + out_st_tim + '"') else ""} \
      ~{if defined(periods) then ("--periods " +  '"' + periods + '"') else ""} \
      ~{if defined(log_f) then ("--logf " +  '"' + log_f + '"') else ""} \
      ~{if (citation) then "--citation" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phyx:1.1--h937addc_0"
  }
  parameter_meta {
    data_f: "input data file"
    data_wide: "data is in wide format so (001 instead of 2)"
    data_z: "data is in probability format (0,1,0,0)"
    tree_f: "input tree file"
    conf: "configuration file"
    out_an_c: "output file for ancestral calc"
    out_st_num: "output file for stochastic mapping number"
    out_st_num_any: "output file for stochastic mapping number any"
    out_st_tim: "output file for stochastic mapping duration"
    periods: "comma separated times"
    log_f: "log file, STOUT otherwise"
    citation: "display phyx citation and exit"
  }
  output {
    File out_stdout = stdout()
    File out_out_an_c = "${in_out_an_c}"
    File out_out_st_tim = "${in_out_st_tim}"
  }
}