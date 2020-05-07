version 1.0

task PlotQualities.pyInputFastx {
  input {
    String wW
    String rR
  }
  command <<<
    plot_qualities.py input_fastx \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""}
  >>>
}