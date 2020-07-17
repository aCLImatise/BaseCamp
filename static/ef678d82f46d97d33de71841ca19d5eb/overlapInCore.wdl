version 1.0

task OverlapInCore {
  input {
    String seq_storepath
  }
  command <<<
    overlapInCore \
      ~{seq_storepath}
  >>>
  parameter_meta {
    seq_storepath: ""
  }
}