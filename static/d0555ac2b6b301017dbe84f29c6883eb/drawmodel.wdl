version 1.0

task Drawmodel {
  input {
    String? landscape
    Boolean? reg
    Boolean? freq
    String model_file
    String psfile
  }
  command <<<
    drawmodel \
      ~{model_file} \
      ~{psfile} \
      ~{if defined(landscape) then ("-landscape " +  '"' + landscape + '"') else ""} \
      ~{if (reg) then "-reg" else ""} \
      ~{if (freq) then "-freq" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    landscape: "[n]      Draw first or nth model"
    reg: "[n]      Draw first or nth regularizer"
    freq: "[n]      Draw first or nth frequencies"
    model_file: ""
    psfile: ""
  }
  output {
    File out_stdout = stdout()
  }
}