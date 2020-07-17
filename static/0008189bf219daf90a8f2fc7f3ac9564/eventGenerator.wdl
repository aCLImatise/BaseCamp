version 1.0

task EventGenerator.py {
  input {
    String? i
    String? o
  }
  command <<<
    eventGenerator.py \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    o: ""
  }
}