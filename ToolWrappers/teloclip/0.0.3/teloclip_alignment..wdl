version 1.0

task TeloclipAlignment {
  input {
    Int? max_break
    Int? min_clip
    String? ref_idx
    String telo_clip
  }
  command <<<
    teloclip alignment_ \
      ~{telo_clip} \
      ~{if defined(max_break) then ("--maxBreak " +  '"' + max_break + '"') else ""} \
      ~{if defined(min_clip) then ("--minClip " +  '"' + min_clip + '"') else ""} \
      ~{if defined(ref_idx) then ("--refIdx " +  '"' + ref_idx + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    max_break: ""
    min_clip: ""
    ref_idx: ""
    telo_clip: ""
  }
  output {
    File out_stdout = stdout()
  }
}