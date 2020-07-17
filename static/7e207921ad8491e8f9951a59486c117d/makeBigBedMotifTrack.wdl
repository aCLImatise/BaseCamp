version 1.0

task MakeBigBedMotifTrack.pl {
  input {
    String track_name
    String motif_file
    String genome
  }
  command <<<
    makeBigBedMotifTrack.pl \
      ~{track_name} \
      ~{motif_file} \
      ~{genome}
  >>>
  parameter_meta {
    track_name: ""
    motif_file: ""
    genome: ""
  }
}