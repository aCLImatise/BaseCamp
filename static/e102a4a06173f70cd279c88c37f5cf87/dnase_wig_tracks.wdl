version 1.0

task DnaseWigTracks.pyRevOutput {
  input {
    Boolean? r
    Boolean? a
    String dnase_wig_tracks_do_tpy
    String regions
    String reads
    String fw_output
    String rev_output
  }
  command <<<
    dnase_wig_tracks.py rev_output \
      ~{dnase_wig_tracks_do_tpy} \
      ~{regions} \
      ~{reads} \
      ~{fw_output} \
      ~{rev_output} \
      ~{true="-r" false="" r} \
      ~{true="-A" false="" a}
  >>>
  parameter_meta {
    r: ""
    a: ""
    dnase_wig_tracks_do_tpy: ""
    regions: ""
    reads: ""
    fw_output: ""
    rev_output: ""
  }
}