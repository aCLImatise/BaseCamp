version 1.0

task MafDropOverlappingpy {
  input {
    String interval
    String files_dot_dot_dot
  }
  command <<<
    maf_drop_overlapping_py \
      ~{interval} \
      ~{files_dot_dot_dot}
  >>>
  parameter_meta {
    interval: ""
    files_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}