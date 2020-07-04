version 1.0

task NLStradamus {
  input {
    Array[String] i
    String? h
    String try
    String more
    String information_dot
  }
  command <<<
    NLStradamus \
      ~{try} \
      ~{more} \
      ~{information_dot} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(h) then ("-h " +  '"' + h + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    h: ""
    try: ""
    more: ""
    information_dot: ""
  }
}