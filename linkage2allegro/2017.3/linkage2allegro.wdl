version 1.0

task Linkage2allegro {
  input {
    File? l
    File? h
    File? d
  }
  command <<<
    linkage2allegro \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(h) then ("-h " +  '"' + h + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""}
  >>>
  parameter_meta {
    l: ""
    h: ""
    d: ""
  }
  output {
    File out_stdout = stdout()
  }
}