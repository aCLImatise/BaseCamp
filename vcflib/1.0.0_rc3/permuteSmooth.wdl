version 1.0

task PermuteSmooth {
  input {
    String? s
    String? f
    String? n
  }
  command <<<
    permuteSmooth \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""}
  >>>
  parameter_meta {
    s: ""
    f: ""
    n: ""
  }
}