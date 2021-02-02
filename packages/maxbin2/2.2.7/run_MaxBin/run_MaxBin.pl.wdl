version 1.0

task RunMaxBinpl {
  input {
    File? out
    String run_max_bin_do_tpl
  }
  command <<<
    run_MaxBin_pl \
      ~{run_max_bin_do_tpl} \
      ~{if (out) then "-out" else ""}
  >>>
  parameter_meta {
    out: "(output file)"
    run_max_bin_do_tpl: "-contig (contig file)"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}