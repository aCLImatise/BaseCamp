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
  parameter_meta {
    number: ""
    suffix: ""
  }
  output {
    File out_stdout = stdout()
  }
}