version 1.0

task _1PromoterTranscriptionRegionpl {
  command <<<
    __1_promoter_transcription_region_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/sat-bsa:1.12--0"
  }
  output {
    File out_stdout = stdout()
  }
}