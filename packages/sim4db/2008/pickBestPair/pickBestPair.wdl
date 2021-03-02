version 1.0

task PickBestPair {
  input {
    String? o
    Int? two
    Int? one
  }
  command <<<
    pickBestPair \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(two) then ("-2 " +  '"' + two + '"') else ""} \
      ~{if defined(one) then ("-1 " +  '"' + one + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    o: ""
    two: ""
    one: ""
  }
  output {
    File out_stdout = stdout()
  }
}