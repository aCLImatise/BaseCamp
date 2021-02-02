version 1.0

task Mdgx {
  input {
    Boolean? print_command_options
    Boolean? i_file
    Boolean? files
    Boolean? cntrl
    Boolean? ewald
    Boolean? force
    Boolean? fit_q
    Boolean? param
    Boolean? ipo_lq
    Boolean? configs
    Boolean? ppt_d
    Boolean? attr
  }
  command <<<
    mdgx \
      ~{if (print_command_options) then "-INPUT" else ""} \
      ~{if (i_file) then "-IFILE" else ""} \
      ~{if (files) then "-FILES" else ""} \
      ~{if (cntrl) then "-CNTRL" else ""} \
      ~{if (ewald) then "-EWALD" else ""} \
      ~{if (force) then "-FORCE" else ""} \
      ~{if (fit_q) then "-FITQ" else ""} \
      ~{if (param) then "-PARAM" else ""} \
      ~{if (ipo_lq) then "-IPOLQ" else ""} \
      ~{if (configs) then "-CONFIGS" else ""} \
      ~{if (ppt_d) then "-PPTD" else ""} \
      ~{if (attr) then "-ATTR" else ""}
  >>>
  parameter_meta {
    print_command_options: ":   print all command line input options"
    i_file: ":   documentation on input file format"
    files: ":   print descriptions of &files namelist variables (these may also\\nbe entered as command line input)"
    cntrl: ":   print descriptions of &cntrl namelist variables (most are similar\\nto SANDER variables, but some are unique to mdgx and some SANDER\\nvariables are not supported)"
    ewald: ":   print &ewald namelist variables"
    force: ":   print &force namelist variables"
    fit_q: ":    print &fitq (charge fitting) namelist variables"
    param: ":   print &param (bonded term fitting) namelist variables"
    ipo_lq: ":   print &ipolq (Implicitly Polarized Charge) namelist variables"
    configs: ": print &configs (small molecule conformation generation) keywords"
    ppt_d: ":    print &pptd (small oligomer molecular dynamics) keywords"
    attr: ":    attributions of certain aspects of the code, with references"
  }
  output {
    File out_stdout = stdout()
  }
}