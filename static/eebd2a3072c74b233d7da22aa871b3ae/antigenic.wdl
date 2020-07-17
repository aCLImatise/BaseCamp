version 1.0

task Antigenic {
  input {
    Boolean? min_len
  }
  command <<<
    antigenic \
      ~{true="-minlen" false="" min_len}
  >>>
  parameter_meta {
    min_len: "integer    [6] Minimum length of antigenic region (Integer from 1 to 50)"
  }
}