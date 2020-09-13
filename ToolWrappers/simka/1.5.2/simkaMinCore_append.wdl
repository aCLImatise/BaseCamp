version 1.0

task SimkaMinCoreAppend {
  input {
    Boolean? in_one
    Boolean? in_two
  }
  command <<<
    simkaMinCore append \
      ~{if (in_one) then "-in1" else ""} \
      ~{if (in_two) then "-in2" else ""}
  >>>
  parameter_meta {
    in_one: "(1 arg) :    first sketch file to merge (this file will be overwritten)"
    in_two: "(1 arg) :    second sketch file to merge (this file will be appended to the first one)"
  }
  output {
    File out_stdout = stdout()
  }
}