version 1.0

task UpstreamCoords.awkSeparation {
  input {
    String? lenLen
    String? separationSeparation
  }
  command <<<
    upstream-coords.awk separation \
      ~{lenLen} \
      ~{separationSeparation}
  >>>
}