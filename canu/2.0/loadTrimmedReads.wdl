version 1.0

task LoadTrimmedReads {
  input {
    String? s
    String? c
  }
  command <<<
    loadTrimmedReads \
      ~{if defined(s) then ("-S " +  '"' + s + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""}
  >>>
  parameter_meta {
    s: ""
    c: ""
  }
}