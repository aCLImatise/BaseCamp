version 1.0

task Drawmodel {
  input {
    String? s
    Boolean? landscape
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
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if (landscape) then "-landscape" else ""} \
      ~{if (mod) then "-mod" else ""} \
      ~{if (reg) then "-reg" else ""} \
      ~{if (freq) then "-freq" else ""}
  >>>
  parameter_meta {
    s: ""
    landscape: ""
    mod: "[n]      Draw first or nth model"
    reg: "[n]      Draw first or nth regularizer"
    freq: "[n]      Draw first or nth frequencies"
    model_file: ""
    psfile: ""
  }
  output {
    File out_stdout = stdout()
  }
}