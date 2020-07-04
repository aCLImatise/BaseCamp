version 1.0

task GenPoHoLandscape {
  input {
    Boolean? p_q_h
  }
  command <<<
    genPoHoLandscape \
      ~{true="-99999999999999999" false="" p_q_h}
  >>>
  parameter_meta {
    p_q_h: "P:2 Q2 H-3 "
  }
}