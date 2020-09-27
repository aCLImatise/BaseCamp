version 1.0

task Hybridmin {
  input {
    Boolean? all_pairs
    Int file_one
    Int file_two
  }
  command <<<
    hybrid_min \
      ~{file_one} \
      ~{file_two} \
      ~{if (all_pairs) then "--allpairs" else ""}
  >>>
  parameter_meta {
    all_pairs: "--maxloop=<maximum bulge/interior loop size> (defaults to 30)\\n--nodangle\\n--prefilter=<value1, value2>\\n--stream"
    file_one: ""
    file_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}