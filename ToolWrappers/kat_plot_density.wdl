version 1.0

task KatPlotDensity {
  input {
    String? t
    String? p
    String? o
  }
  command <<<
    kat_plot_density \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    t: ""
    p: ""
    o: ""
  }
  output {
    File out_stdout = stdout()
  }
}