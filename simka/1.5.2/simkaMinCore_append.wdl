version 1.0

task SimkaMinCoreAppend {
  input {
    Boolean? in_one
    Boolean? in_two
  }
  command <<<
    simkaMinCore append \
      ~{true="-in1" false="" in_one} \
      ~{true="-in2" false="" in_two}
  >>>
  parameter_meta {
    in_one: "(1 arg) :    first sketch file to merge (this file will be overwritten)"
    in_two: "(1 arg) :    second sketch file to merge (this file will be appended to the first one)"
  }
}