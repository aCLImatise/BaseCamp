version 1.0

task BpGccalcpl {
  input {
    File? i
    String? f
    String gc_calc_do_tpl
  }
  command <<<
    bp_gccalc_pl \
      ~{gc_calc_do_tpl} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    f: ""
    gc_calc_do_tpl: ""
  }
  output {
    File out_stdout = stdout()
  }
}