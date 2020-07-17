version 1.0

task Logcombiner {
  input {
    File? log
    Int? n
  }
  command <<<
    logcombiner \
      ~{if defined(log) then ("-log " +  '"' + log + '"') else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""}
  >>>
  parameter_meta {
    log: ""
    n: ""
  }
}