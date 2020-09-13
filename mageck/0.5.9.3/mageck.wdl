version 1.0

task Mageck {
  input {
    Boolean? v
  }
  command <<<
    mageck \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}