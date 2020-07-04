version 1.0

task Intersect {
  input {
    String? option
  }
  command <<<
    intersect \
      ~{option}
  >>>
  parameter_meta {
    option: ""
  }
}