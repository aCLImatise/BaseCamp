version 1.0

task Allegro {
  input {
    Boolean? m
    Boolean? n
    Boolean? t
    File? l
    String options_file
  }
  command <<<
    allegro \
      ~{options_file} \
      ~{if (m) then "-m" else ""} \
      ~{if (n) then "-n" else ""} \
      ~{if (t) then "-t" else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""}
  >>>
  parameter_meta {
    m: ""
    n: ""
    t: ""
    l: ""
    options_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}