version 1.0

task DASqv {
  input {
    Boolean? v
    Boolean? h
    Boolean? c
    Int? var_3
    Int var_4
  }
  command <<<
    DASqv \
      ~{var_3} \
      ~{var_4} \
      ~{true="-v" false="" v} \
      ~{true="-H" false="" h} \
      ~{true="-c" false="" c}
  >>>
  parameter_meta {
    v: ""
    h: ""
    c: ""
    var_3: ""
    var_4: ""
  }
}