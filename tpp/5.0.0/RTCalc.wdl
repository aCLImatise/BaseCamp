version 1.0

task RTCalc {
  input {
    String cv
    String ann
  }
  command <<<
    RTCalc \
      ~{cv} \
      ~{ann}
  >>>
  parameter_meta {
    cv: ""
    ann: ""
  }
}