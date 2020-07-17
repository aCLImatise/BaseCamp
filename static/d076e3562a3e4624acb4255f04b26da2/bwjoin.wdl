version 1.0

task Bwjoin {
  input {
    String? f
    String? o
  }
  command <<<
    bwjoin \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    f: ""
    o: ""
  }
}