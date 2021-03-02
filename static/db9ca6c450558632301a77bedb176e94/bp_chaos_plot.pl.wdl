version 1.0

task BpChaosPlotpl {
  input {
    File? graphics
    Boolean? i
    String chaos_plot
  }
  command <<<
    bp_chaos_plot_pl \
      ~{chaos_plot} \
      ~{if defined(graphics) then ("--graphics " +  '"' + graphics + '"') else ""} \
      ~{if (i) then "-i" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    graphics: "TYPE"
    i: ""
    chaos_plot: ""
  }
  output {
    File out_stdout = stdout()
    File out_graphics = "${in_graphics}"
  }
}