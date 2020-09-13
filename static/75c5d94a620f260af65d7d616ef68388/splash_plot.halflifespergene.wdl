version 1.0

task SplashPlothalflifespergene {
  input {
    String? sim_dir
    String? slam_dunk_dir
    String? time_points
    File? output_file
    String? tc_rate
    File? bed
  }
  command <<<
    splash plot_halflifespergene \
      ~{if defined(sim_dir) then ("--simDir " +  '"' + sim_dir + '"') else ""} \
      ~{if defined(slam_dunk_dir) then ("--slamdunkDir " +  '"' + slam_dunk_dir + '"') else ""} \
      ~{if defined(time_points) then ("--timepoints " +  '"' + time_points + '"') else ""} \
      ~{if defined(output_file) then ("--outputFile " +  '"' + output_file + '"') else ""} \
      ~{if defined(tc_rate) then ("--tc-rate " +  '"' + tc_rate + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""}
  >>>
  parameter_meta {
    sim_dir: ""
    slam_dunk_dir: ""
    time_points: ""
    output_file: ""
    tc_rate: "T->C conversion rate"
    bed: "BED file"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}