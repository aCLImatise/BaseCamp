version 1.0

task BootstrapRun.sh {
  input {
    String? o
    String? n
    String? s
  }
  command <<<
    bootstrap_run.sh \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""}
  >>>
  parameter_meta {
    o: ""
    n: ""
    s: ""
  }
}