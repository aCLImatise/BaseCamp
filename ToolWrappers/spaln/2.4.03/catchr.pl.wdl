version 1.0

task Catchrpl {
  input {
    Boolean? o
    Boolean? n
    Boolean? h_prefix
    Boolean? w_keyword
    String input_files
  }
  command <<<
    catchr_pl \
      ~{input_files} \
      ~{if (o) then "-o" else ""} \
      ~{if (n) then "-n" else ""} \
      ~{if (h_prefix) then "-hPrefix" else ""} \
      ~{if (w_keyword) then "-wKeyword" else ""}
  >>>
  parameter_meta {
    o: ""
    n: ""
    h_prefix: ""
    w_keyword: ""
    input_files: ""
  }
  output {
    File out_stdout = stdout()
  }
}