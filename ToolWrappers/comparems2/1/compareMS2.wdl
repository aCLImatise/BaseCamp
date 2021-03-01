version 1.0

task CompareMS2 {
  input {
    String? p
    File? o
    File? two
    File? one
  }
  command <<<
    compareMS2 \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(two) then ("-2 " +  '"' + two + '"') else ""} \
      ~{if defined(one) then ("-1 " +  '"' + one + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    p: ""
    o: ""
    two: ""
    one: ""
  }
  output {
    File out_stdout = stdout()
    File out_o = "${in_o}"
  }
}