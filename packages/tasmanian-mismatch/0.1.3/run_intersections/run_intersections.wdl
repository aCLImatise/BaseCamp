version 1.0

task RunIntersections {
  input {
    String chri
  }
  command <<<
    run_intersections \
      ~{chri}
  >>>
  parameter_meta {
    chri: "850     879     +       L1P5    LINE    L1"
  }
  output {
    File out_stdout = stdout()
  }
}