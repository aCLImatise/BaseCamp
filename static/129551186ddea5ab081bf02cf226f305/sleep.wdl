version 1.0

task Sleep {
  input {
    String number
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
}