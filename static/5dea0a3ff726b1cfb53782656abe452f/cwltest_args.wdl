version 1.0

task CwltestArgs {
  input {
    String? test
    String? basedir
    Boolean? l
    String? n
    String? s
    String cwl_test
  }
  command <<<
    cwltest args \
      ~{cwl_test} \
      ~{if defined(test) then ("--test " +  '"' + test + '"') else ""} \
      ~{if defined(basedir) then ("--basedir " +  '"' + basedir + '"') else ""} \
      ~{true="-l" false="" l} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""}
  >>>
  parameter_meta {
    test: ""
    basedir: ""
    l: ""
    n: ""
    s: ""
    cwl_test: ""
  }
}