version 1.0

task SplashPlotconversions {
  input {
    String? sim_dir
    String? slam_dunk_dir
    File? output_file
    String? tc_rate
  }
  command <<<
    splash plot_conversions \
      ~{if defined(sim_dir) then ("--simDir " +  '"' + sim_dir + '"') else ""} \
      ~{if defined(slam_dunk_dir) then ("--slamdunkDir " +  '"' + slam_dunk_dir + '"') else ""} \
      ~{if defined(output_file) then ("--outputFile " +  '"' + output_file + '"') else ""} \
      ~{if defined(tc_rate) then ("--tc-rate " +  '"' + tc_rate + '"') else ""}
  >>>
  parameter_meta {
    sim_dir: ""
    slam_dunk_dir: ""
    output_file: ""
    tc_rate: "T->C conversion rate\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}