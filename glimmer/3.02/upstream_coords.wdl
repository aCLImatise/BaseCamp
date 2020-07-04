version 1.0

task UpstreamCoords.awk {
  input {
    String len
    String separation
  }
  command <<<
    upstream-coords.awk \
      ~{len} \
      ~{separation}
  >>>
  parameter_meta {
    len: ""
    separation: ""
  }
}