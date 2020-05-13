version 1.0

task FastxLenFilter.py {
  input {
    Int minMinLen
  }
  command <<<
    fastx_len_filter.py \
      ~{if defined(minMinLen) then ("--min_len " +  '"' + minMinLen + '"') else ""}
  >>>
}