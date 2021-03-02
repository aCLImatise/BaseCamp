version 1.0

task CreatePanGenomePlotsR {
  command <<<
    create_pan_genome_plots_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}