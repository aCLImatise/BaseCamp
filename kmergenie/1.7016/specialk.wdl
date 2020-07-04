version 1.0

task Specialk {
  input {
    String? o
    String? s
    String reads_file
  }
  command <<<
    specialk \
      ~{reads_file} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""}
  >>>
  parameter_meta {
    o: ""
    s: ""
    reads_file: ""
  }
}