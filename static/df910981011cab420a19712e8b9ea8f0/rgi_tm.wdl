version 1.0

task RgiTm {
  input {
    String? t
    File? o
    File? i
  }
  command <<<
    rgi tm \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    t: ""
    o: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
    File out_o = "${in_o}"
  }
}