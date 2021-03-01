version 1.0

task SkmerQueryLibrary {
  input {
    String? p
    Boolean? t
    String? e
    String? o
    Boolean? a
    String sk_mer
    String query
    String var_input
    String library
  }
  command <<<
    skmer query library \
      ~{sk_mer} \
      ~{query} \
      ~{var_input} \
      ~{library} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if (t) then "-t" else ""} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if (a) then "-a" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    p: ""
    t: ""
    e: ""
    o: ""
    a: ""
    sk_mer: ""
    query: ""
    var_input: ""
    library: ""
  }
  output {
    File out_stdout = stdout()
  }
}