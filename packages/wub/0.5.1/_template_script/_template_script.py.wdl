version 1.0

task TemplateScriptpy {
  input {
    String? i
  }
  command <<<
    _template_script_py \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0"
  }
  parameter_meta {
    i: "Input."
  }
  output {
    File out_stdout = stdout()
  }
}