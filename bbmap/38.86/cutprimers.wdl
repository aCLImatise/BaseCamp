version 1.0

task Cutprimers.sh {
  input {
    String in
  }
  command <<<
    cutprimers.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}