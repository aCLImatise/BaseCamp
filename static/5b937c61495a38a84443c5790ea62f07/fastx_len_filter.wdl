version 1.0

task FastxLenFilter.py {
  input {
    Int? min_len
  }
  command <<<
    fastx_len_filter.py \
      ~{if defined(min_len) then ("--min_len " +  '"' + min_len + '"') else ""}
  >>>
  parameter_meta {
    min_len: ""
  }
}