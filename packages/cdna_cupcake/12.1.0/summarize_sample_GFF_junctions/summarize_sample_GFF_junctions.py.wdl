version 1.0

task SummarizeSampleGFFJunctionspy {
  command <<<
    summarize_sample_GFF_junctions_py
  >>>
  output {
    File out_stdout = stdout()
  }
}