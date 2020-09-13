version 1.0

task TeloclipextractSamfile {
  input {
    String? prefix
    String? ref_idx
    String telo_clip_extract
  }
  command <<<
    teloclip_extract samfile \
      ~{telo_clip_extract} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(ref_idx) then ("--refIdx " +  '"' + ref_idx + '"') else ""}
  >>>
  parameter_meta {
    prefix: ""
    ref_idx: ""
    telo_clip_extract: ""
  }
  output {
    File out_stdout = stdout()
  }
}