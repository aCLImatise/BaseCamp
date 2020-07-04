version 1.0

task TgTigDisplay {
  input {
    String? s
    String? t
  }
  command <<<
    tgTigDisplay \
      ~{if defined(s) then ("-S " +  '"' + s + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  parameter_meta {
    s: ""
    t: ""
  }
}