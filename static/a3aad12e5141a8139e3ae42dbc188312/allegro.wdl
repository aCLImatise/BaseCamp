version 1.0

task Allegro {
  input {
    String? l
    Boolean? t
    Boolean? n
    Boolean? m
    String options_file
  }
  command <<<
    allegro \
      ~{options_file} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{true="-t" false="" t} \
      ~{true="-n" false="" n} \
      ~{true="-m" false="" m}
  >>>
  parameter_meta {
    l: ""
    t: ""
    n: ""
    m: ""
    options_file: ""
  }
}