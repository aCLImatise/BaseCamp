version 1.0

task Mergesorted.sh {
  input {
    String sort_temp
  }
  command <<<
    mergesorted.sh \
      ~{sort_temp}
  >>>
  parameter_meta {
    sort_temp: ""
  }
}