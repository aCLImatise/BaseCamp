version 1.0

task AntarnapyDP {
  input {
    String? accuracy
    String? cstr
  }
  command <<<
    antarna_py DP \
      ~{if defined(accuracy) then ("--accuracy " +  '"' + accuracy + '"') else ""} \
      ~{if defined(cstr) then ("-Cstr " +  '"' + cstr + '"') else ""}
  >>>
  parameter_meta {
    accuracy: ""
    cstr: ""
  }
  output {
    File out_stdout = stdout()
  }
}