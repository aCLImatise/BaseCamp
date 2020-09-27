version 1.0

task PickLongReads {
  input {
    String? o
    Int? length
    String? i
  }
  command <<<
    pick_long_reads \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    o: ""
    length: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}