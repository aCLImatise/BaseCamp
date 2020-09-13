version 1.0

task IntersectionMatrixpy {
  input {
    String n
    String run
    String send
    String in
    String matrix
    String the
    String a
    String example
    String list
    String their
    String with
    String intersections
    String of
  }
  command <<<
    intersection_matrix_py \
      ~{n} \
      ~{run} \
      ~{send} \
      ~{in} \
      ~{matrix} \
      ~{the} \
      ~{a} \
      ~{example} \
      ~{list} \
      ~{their} \
      ~{with} \
      ~{intersections} \
      ~{of}
  >>>
  parameter_meta {
    n: ""
    run: ""
    send: ""
    in: ""
    matrix: ""
    the: ""
    a: ""
    example: ""
    list: ""
    their: ""
    with: ""
    intersections: ""
    of: ""
  }
  output {
    File out_stdout = stdout()
  }
}