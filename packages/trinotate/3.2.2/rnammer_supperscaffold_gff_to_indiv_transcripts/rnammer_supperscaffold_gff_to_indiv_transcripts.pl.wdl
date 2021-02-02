version 1.0

task RnammerSupperscaffoldGffToIndivTranscriptspl {
  command <<<
    rnammer_supperscaffold_gff_to_indiv_transcripts_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}