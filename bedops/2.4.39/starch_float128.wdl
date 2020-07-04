version 1.0

task StarchFloat128 {
  input {
    String starch
  }
  command <<<
    starch-float128 \
      ~{starch}
  >>>
  parameter_meta {
    starch: ""
  }
}