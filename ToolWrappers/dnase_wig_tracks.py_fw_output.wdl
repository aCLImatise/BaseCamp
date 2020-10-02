version 1.0

task DnaseWigTrackspyFwOutput {
  input {
    Boolean? a
    Boolean? r
    String dnase_wig_tracks_do_tpy
    String regions
    String reads
    String fw_output
    String rev_output
  }
  command <<<
    dnase_wig_tracks_py fw_output \
      ~{dnase_wig_tracks_do_tpy} \
      ~{regions} \
      ~{reads} \
      ~{fw_output} \
      ~{rev_output} \
      ~{if (a) then "-A" else ""} \
      ~{if (r) then "-r" else ""}
  >>>
  parameter_meta {
    a: ""
    r: ""
    dnase_wig_tracks_do_tpy: ""
    regions: ""
    reads: ""
    fw_output: ""
    rev_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}