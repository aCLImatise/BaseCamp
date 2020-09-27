version 1.0

task Sortsam {
  input {
    Boolean? pos
    Boolean? idx
  }
  command <<<
    sortsam \
      ~{if (pos) then "-pos" else ""} \
      ~{if (idx) then "-idx" else ""}
  >>>
  parameter_meta {
    pos: "-- Sort by chromosome position"
    idx: "-- Sort by read_index position"
  }
  output {
    File out_stdout = stdout()
  }
}