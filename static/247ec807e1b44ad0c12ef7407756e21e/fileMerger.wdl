version 1.0

task FileMerger.py {
  input {
    Array[String] i
    String? f
    String? o
  }
  command <<<
    fileMerger.py \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    f: ""
    o: ""
  }
}