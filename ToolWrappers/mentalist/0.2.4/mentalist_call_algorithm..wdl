version 1.0

task MentalistCallAlgorithm {
  input {
    String? kt
    String? t
    String? db
    String? o
    String mentalist
    String var_call
  }
  command <<<
    mentalist call algorithm_ \
      ~{mentalist} \
      ~{var_call} \
      ~{if defined(kt) then ("--kt " +  '"' + kt + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    kt: ""
    t: ""
    db: ""
    o: ""
    mentalist: ""
    var_call: ""
  }
  output {
    File out_stdout = stdout()
  }
}