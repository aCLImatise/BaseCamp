version 1.0

task MentaLiSTjl {
  input {
    Boolean? v
  }
  command <<<
    MentaLiST_jl \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}