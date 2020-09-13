version 1.0

task EventGeneratorpy {
  input {
    File? o
    File? i
  }
  command <<<
    eventGenerator_py \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    o: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
    File out_o = "${in_o}"
  }
}