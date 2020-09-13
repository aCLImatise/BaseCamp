version 1.0

task FastaptamerSearch {
  input {
    String? p
    String? o
    File? i
    String as_lashtslashgslashcslashu
  }
  command <<<
    fastaptamer_search \
      ~{as_lashtslashgslashcslashu} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    p: ""
    o: ""
    i: ""
    as_lashtslashgslashcslashu: "single bases"
  }
  output {
    File out_stdout = stdout()
  }
}