version 1.0

task MakeBigBedMotifTrackpl {
  input {
    String track_name
    File motif_file
    String genome
  }
  command <<<
    makeBigBedMotifTrack_pl \
      ~{track_name} \
      ~{motif_file} \
      ~{genome}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    track_name: ""
    motif_file: ""
    genome: ""
  }
  output {
    File out_stdout = stdout()
  }
}