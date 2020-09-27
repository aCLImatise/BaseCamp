version 1.0

task BootstrapRunsh {
  input {
    String? s
    String? n
    String? o
  }
  command <<<
    bootstrap_run_sh \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    s: ""
    n: ""
    o: ""
  }
  output {
    File out_stdout = stdout()
  }
}