version 1.0

task Chromatiblock {
  input {
    String? d
    String? l
    String zero_dot_four_dot_two
  }
  command <<<
    chromatiblock \
      ~{zero_dot_four_dot_two} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""}
  >>>
  parameter_meta {
    d: ""
    l: ""
    zero_dot_four_dot_two: ""
  }
}