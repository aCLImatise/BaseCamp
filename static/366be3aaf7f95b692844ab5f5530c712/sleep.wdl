version 1.0

task Sleep {
  input {
    Int number
    String? suffix
  }
  command <<<
    sleep \
      ~{number} \
      ~{suffix}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    number: ""
    suffix: ""
  }
  output {
    File out_stdout = stdout()
  }
}