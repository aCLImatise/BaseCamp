version 1.0

task PickLongReads {
  input {
    String? i
    Int? length
    String? o
  }
  command <<<
    pick_long_reads \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    length: ""
    o: ""
  }
}