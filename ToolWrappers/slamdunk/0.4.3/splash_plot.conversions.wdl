version 1.0

task SplashPlotconversions {
  input {
    File? o
    String? slam
    String? sim
  }
  command <<<
    splash plot_conversions \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(slam) then ("-slam " +  '"' + slam + '"') else ""} \
      ~{if defined(sim) then ("-sim " +  '"' + sim + '"') else ""}
  >>>
  parameter_meta {
    o: ""
    slam: ""
    sim: ""
  }
  output {
    File out_stdout = stdout()
    File out_o = "${in_o}"
  }
}