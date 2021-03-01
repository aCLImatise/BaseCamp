version 1.0

task FastqSimulatesort {
  input {
    Int? o_two
    Int? o_one
    Int? i_two
    Int? i_one
  }
  command <<<
    fastqSimulate_sort \
      ~{if defined(o_two) then ("-o2 " +  '"' + o_two + '"') else ""} \
      ~{if defined(o_one) then ("-o1 " +  '"' + o_one + '"') else ""} \
      ~{if defined(i_two) then ("-i2 " +  '"' + i_two + '"') else ""} \
      ~{if defined(i_one) then ("-i1 " +  '"' + i_one + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    o_two: ""
    o_one: ""
    i_two: ""
    i_one: ""
  }
  output {
    File out_stdout = stdout()
  }
}