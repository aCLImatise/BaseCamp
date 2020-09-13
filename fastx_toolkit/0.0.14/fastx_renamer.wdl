version 1.0

task FastxRenamer {
  input {
    String? o
    File? i
    Boolean? v
    Boolean? z
    String? n
  }
  command <<<
    fastx_renamer \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if (v) then "-v" else ""} \
      ~{if (z) then "-z" else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""}
  >>>
  parameter_meta {
    o: ""
    i: ""
    v: ""
    z: ""
    n: ""
  }
  output {
    File out_stdout = stdout()
  }
}