version 1.0

task RnammerSupperscaffoldGffToIndivTranscriptspl {
  command <<<
    rnammer_supperscaffold_gff_to_indiv_transcripts_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}