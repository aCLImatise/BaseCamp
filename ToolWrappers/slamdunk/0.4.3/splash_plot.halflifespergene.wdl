version 1.0

task SplashPlothalflifespergene {
  input {
    Boolean? t
    String? slam
    String? sim
  }
  command <<<
    splash plot_halflifespergene \
      ~{if (t) then "-t" else ""} \
      ~{if defined(slam) then ("-slam " +  '"' + slam + '"') else ""} \
      ~{if defined(sim) then ("-sim " +  '"' + sim + '"') else ""}
  >>>
  parameter_meta {
    t: ""
    slam: ""
    sim: ""
  }
  output {
    File out_stdout = stdout()
  }
}