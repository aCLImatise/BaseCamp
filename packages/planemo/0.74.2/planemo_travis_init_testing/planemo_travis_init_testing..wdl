version 1.0

task PlanemoTravisInitTesting {
  input {
    String plane_mo
    String travis_in_it
    String project
  }
  command <<<
    planemo travis_init testing_ \
      ~{plane_mo} \
      ~{travis_in_it} \
      ~{project}
  >>>
  runtime {
    docker: "quay.io/biocontainers/planemo:0.74.2--py_0"
  }
  parameter_meta {
    plane_mo: ""
    travis_in_it: ""
    project: ""
  }
  output {
    File out_stdout = stdout()
  }
}