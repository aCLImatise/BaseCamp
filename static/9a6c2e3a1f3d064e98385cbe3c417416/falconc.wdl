version 1.0

task Falconc {
  input {
    String rr_h_ctg_track_two
  }
  command <<<
    falconc \
      ~{rr_h_ctg_track_two}
  >>>
  parameter_meta {
    rr_h_ctg_track_two: "Stage 2 of rr_hctg_track"
  }
}