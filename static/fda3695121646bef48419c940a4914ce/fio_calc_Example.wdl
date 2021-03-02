version 1.0

task FioCalcExample {
  input {
    String fio
    String calc
    String property_name
    String expression
  }
  command <<<
    fio calc Example \
      ~{fio} \
      ~{calc} \
      ~{property_name} \
      ~{expression}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fiona:1.8.6"
  }
  parameter_meta {
    fio: ""
    calc: ""
    property_name: ""
    expression: ""
  }
  output {
    File out_stdout = stdout()
  }
}