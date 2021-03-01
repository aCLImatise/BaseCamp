version 1.0

task SplashPlothalflifespergene {
  input {
    String? slam_dunk_dir
    File? bed
  }
  command <<<
    splash plot_halflifespergene \
      ~{if defined(slam_dunk_dir) then ("--slamdunkDir " +  '"' + slam_dunk_dir + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    slam_dunk_dir: "T->C conversion rate"
    bed: "BED file"
  }
  output {
    File out_stdout = stdout()
  }
}