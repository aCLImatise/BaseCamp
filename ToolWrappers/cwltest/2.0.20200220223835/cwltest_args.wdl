version 1.0

task CwltestArgs {
  input {
    String? s
    String? n
    Boolean? l
    String? basedir
    String? test
    String cwl_test
  }
  command <<<
    cwltest args \
      ~{cwl_test} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{if (l) then "-l" else ""} \
      ~{if defined(basedir) then ("--basedir " +  '"' + basedir + '"') else ""} \
      ~{if defined(test) then ("--test " +  '"' + test + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    s: ""
    n: ""
    l: ""
    basedir: ""
    test: ""
    cwl_test: ""
  }
  output {
    File out_stdout = stdout()
  }
}