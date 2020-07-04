version 1.0

task BpGccalc.pl {
  input {
    String? f
    File? i
    String gc_calc_do_tpl
  }
  command <<<
    bp_gccalc.pl \
      ~{gc_calc_do_tpl} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    f: ""
    i: ""
    gc_calc_do_tpl: ""
  }
}