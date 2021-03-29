version 1.0

task CoolboxRunWebapp {
  input {
    Boolean? voila_args
  }
  command <<<
    coolbox run_webapp \
      ~{if (voila_args) then "--voila_args" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/coolbox:0.3.6--py_0"
  }
  parameter_meta {
    voila_args: "=[4mVOILA_ARGS[0m\\nDefault: '--Voila.ip=0.0.0.0'\\nArguments for run jupyter.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}