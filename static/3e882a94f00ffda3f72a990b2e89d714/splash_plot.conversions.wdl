version 1.0

task SplashPlotconversions {
  input {
    String? slam_dunk_dir
  }
  command <<<
    splash plot_conversions \
      ~{if defined(slam_dunk_dir) then ("--slamdunkDir " +  '"' + slam_dunk_dir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    slam_dunk_dir: "T->C conversion rate\\n"
  }
  output {
    File out_stdout = stdout()
  }
}