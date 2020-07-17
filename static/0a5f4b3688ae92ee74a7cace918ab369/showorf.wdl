version 1.0

task Showorf {
  input {
    Boolean? frames
  }
  command <<<
    showorf \
      ~{true="-frames" false="" frames}
  >>>
  parameter_meta {
    frames: "menu       [1,2,3,4,5,6] Select one or more values (Values: 0 (None); 1 (F1); 2 (F2); 3 (F3); 4 (R1); 5 (R2); 6 (R3))"
  }
}