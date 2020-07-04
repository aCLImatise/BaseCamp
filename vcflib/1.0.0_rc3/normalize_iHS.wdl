version 1.0

task NormalizeIHS {
  input {
    String? s
    String? f
    String normalize_hs
  }
  command <<<
    normalize-iHS \
      ~{normalize_hs} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  parameter_meta {
    s: ""
    f: ""
    normalize_hs: ""
  }
}