version 1.0

task FastxLenFilterpy {
  input {
    Int? min_len
  }
  command <<<
    fastx_len_filter_py \
      ~{if defined(min_len) then ("--min_len " +  '"' + min_len + '"') else ""}
  >>>
  parameter_meta {
    min_len: ""
  }
  output {
    File out_stdout = stdout()
  }
}