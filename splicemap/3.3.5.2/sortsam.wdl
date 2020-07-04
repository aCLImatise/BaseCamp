version 1.0

task Sortsam {
  input {
    Boolean? pos
    Boolean? idx
  }
  command <<<
    sortsam \
      ~{true="-pos" false="" pos} \
      ~{true="-idx" false="" idx}
  >>>
  parameter_meta {
    pos: "-- Sort by chromosome position"
    idx: "-- Sort by read_index position"
  }
}