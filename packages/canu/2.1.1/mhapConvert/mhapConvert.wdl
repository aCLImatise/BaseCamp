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
  runtime {
    docker: "quay.io/biocontainers/canu:2.1.1--he1b5a44_1"
  }
  parameter_meta {
    o: ""
    s: ""
    input_do_tm_hap: ""
  }
  output {
    File out_stdout = stdout()
  }
}