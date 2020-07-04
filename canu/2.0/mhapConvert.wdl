version 1.0

task MhapConvert {
  input {
    String? s
    String? o
    String input_do_tm_hap
  }
  command <<<
    mhapConvert \
      ~{input_do_tm_hap} \
      ~{if defined(s) then ("-S " +  '"' + s + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    s: ""
    o: ""
    input_do_tm_hap: ""
  }
}