version 1.0

task MhapConvert {
  input {
    String? o
    String? s
    String input_do_tm_hap
  }
  command <<<
    mhapConvert \
      ~{input_do_tm_hap} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(s) then ("-S " +  '"' + s + '"') else ""}
  >>>
  parameter_meta {
    o: ""
    s: ""
    input_do_tm_hap: ""
  }
  output {
    File out_stdout = stdout()
  }
}