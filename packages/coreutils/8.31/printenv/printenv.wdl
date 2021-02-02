version 1.0

task Printenv {
  input {
    Boolean? null
  }
  command <<<
    printenv \
      ~{if (null) then "--null" else ""}
  >>>
  parameter_meta {
    null: "end each output line with NUL, not newline"
  }
  output {
    File out_stdout = stdout()
  }
}