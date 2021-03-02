version 1.0

task KeyFreq {
  input {
    Int? p
    File? o
  }
  command <<<
    keyFreq \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    p: ""
    o: ""
  }
  output {
    File out_stdout = stdout()
    File out_o = "${in_o}"
  }
}