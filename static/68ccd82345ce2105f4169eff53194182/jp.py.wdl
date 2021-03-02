version 1.0

task Jppy {
  input {
    File? filename
    Boolean? ast
    String expression
  }
  command <<<
    jp_py \
      ~{expression} \
      ~{if defined(filename) then ("--filename " +  '"' + filename + '"') else ""} \
      ~{if (ast) then "--ast" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    filename: "The filename containing the input data. If a filename\\nis not given then data is read from stdin."
    ast: "Pretty print the AST, do not search the data."
    expression: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}