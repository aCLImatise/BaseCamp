version 1.0

task TestAtac {
  input {
    Boolean? print_warning_match
    String? d
    String? m
  }
  command <<<
    testAtac \
      ~{true="-i" false="" print_warning_match} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""}
  >>>
  parameter_meta {
    print_warning_match: "print a warning if a match is below this percent identity"
    d: ""
    m: ""
  }
}