version 1.0

task Antigenic {
  input {
    Boolean? min_len
  }
  command <<<
    antigenic \
      ~{if (min_len) then "-minlen" else ""}
  >>>
  parameter_meta {
    min_len: "integer    [6] Minimum length of antigenic region\\n(Integer from 1 to 50)"
  }
  output {
    File out_stdout = stdout()
  }
}