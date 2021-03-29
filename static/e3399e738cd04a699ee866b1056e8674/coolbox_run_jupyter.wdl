version 1.0

task CoolboxRunJupyter {
  input {
    Boolean? j_up_y_ter_args
  }
  command <<<
    coolbox run_jupyter \
      ~{if (j_up_y_ter_args) then "--jupyter_args" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/coolbox:0.3.6--py_0"
  }
  parameter_meta {
    j_up_y_ter_args: "=[4mJUPYTER_ARGS[0m\\nDefault: '--ip=0.0.0.0'\\nArguments for run jupyter.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}