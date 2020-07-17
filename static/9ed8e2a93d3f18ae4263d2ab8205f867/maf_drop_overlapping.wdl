version 1.0

task MafDropOverlapping.py {
  input {
    Int interval
    File files_dot_dot_dot
  }
  command <<<
    maf_drop_overlapping.py \
      ~{interval} \
      ~{files_dot_dot_dot}
  >>>
  parameter_meta {
    interval: ""
    files_dot_dot_dot: ""
  }
}