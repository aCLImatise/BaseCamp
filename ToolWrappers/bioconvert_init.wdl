version 1.0

task BioconvertInit {
  input {
    String? o
    String? i
  }
  command <<<
    bioconvert_init \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    o: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}