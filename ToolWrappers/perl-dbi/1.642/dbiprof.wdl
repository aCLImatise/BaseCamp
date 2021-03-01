version 1.0

task Dbiprof {
  input {
    Int? number
    String? sort
    Boolean? reverse
    String? match
    String? exclude
    Boolean? case_sensitive
    Boolean? delete
    Boolean? version
  }
  command <<<
    dbiprof \
      ~{if defined(number) then ("-number " +  '"' + number + '"') else ""} \
      ~{if defined(sort) then ("-sort " +  '"' + sort + '"') else ""} \
      ~{if (reverse) then "-reverse" else ""} \
      ~{if defined(match) then ("-match " +  '"' + match + '"') else ""} \
      ~{if defined(exclude) then ("-exclude " +  '"' + exclude + '"') else ""} \
      ~{if (case_sensitive) then "-case_sensitive" else ""} \
      ~{if (delete) then "-delete" else ""} \
      ~{if (version) then "-version" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    number: "show top N, defaults to 10"
    sort: "sort by S, defaults to total"
    reverse: "reverse the sort"
    match: "=V       for filtering, see docs"
    exclude: "=V     for filtering, see docs"
    case_sensitive: "for -match and -exclude"
    delete: "rename files before reading then delete afterwards"
    version: "print version number and exit"
  }
  output {
    File out_stdout = stdout()
  }
}