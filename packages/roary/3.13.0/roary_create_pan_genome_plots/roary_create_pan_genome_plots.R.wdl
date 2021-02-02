version 1.0

task RoarycreatePanGenomePlotsR {
  command <<<
    roary_create_pan_genome_plots_R
  >>>
  output {
    File out_stdout = stdout()
  }
}