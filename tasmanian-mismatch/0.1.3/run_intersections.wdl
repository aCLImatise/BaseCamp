version 1.0

task RunIntersections {
  input {
    String? chriChri
  }
  command <<<
    run_intersections \
      ~{chriChri}
  >>>
}