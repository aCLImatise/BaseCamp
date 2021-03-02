version 1.0

task Tfscan {
  input {
    Boolean? menu
    Boolean? mismatch
    Boolean? minlength
  }
  command <<<
    tfscan \
      ~{if (menu) then "-menu" else ""} \
      ~{if (mismatch) then "-mismatch" else ""} \
      ~{if (minlength) then "-minlength" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    menu: "menu       [V] Select class (Values: F (fungi); I\\n(insect); P (plant); V (vertebrate); O\\n(other); C (Custom))"
    mismatch: "integer    [0] Number of mismatches (Integer 0 or more)"
    minlength: "integer    [1] Display matches equal to or above this\\nlength (Integer 1 or more)"
  }
  output {
    File out_stdout = stdout()
  }
}