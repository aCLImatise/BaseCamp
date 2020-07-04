version 1.0

task GemBSMapReport {
  input {
    String? loglevel
    Boolean? v
    String? j
    String? d
    String var_4
    String var_5
  }
  command <<<
    gemBS map-report \
      ~{var_4} \
      ~{var_5} \
      ~{if defined(loglevel) then ("--loglevel " +  '"' + loglevel + '"') else ""} \
      ~{true="-v" false="" v} \
      ~{if defined(j) then ("-j " +  '"' + j + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""}
  >>>
  parameter_meta {
    loglevel: ""
    v: ""
    j: ""
    d: ""
    var_4: ""
    var_5: ""
  }
}