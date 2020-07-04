version 1.0

task Drawmodel {
  input {
    Boolean? mod
    Boolean? reg
    Boolean? freq
    String model_file
    String psfile
  }
  command <<<
    drawmodel \
      ~{model_file} \
      ~{psfile} \
      ~{true="-mod" false="" mod} \
      ~{true="-reg" false="" reg} \
      ~{true="-freq" false="" freq}
  >>>
  parameter_meta {
    mod: "[n]      Draw first or nth model"
    reg: "[n]      Draw first or nth regularizer"
    freq: "[n]      Draw first or nth frequencies"
    model_file: ""
    psfile: ""
  }
}