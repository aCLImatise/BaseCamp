version 1.0

task PlotQualities.pyInputFastx {
  input {
    String? w
    String? r
  }
  command <<<
    plot_qualities.py input_fastx \
      ~{if defined(w) then ("-w " +  '"' + w + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  parameter_meta {
    w: ""
    r: ""
  }
}