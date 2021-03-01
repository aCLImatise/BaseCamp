version 1.0

task YakInspect {
  input {
    Int? max_count_effective
    Int in_one_dot_yak
    Int? in_two_dot_yak
  }
  command <<<
    yak inspect \
      ~{in_one_dot_yak} \
      ~{in_two_dot_yak} \
      ~{if defined(max_count_effective) then ("-m " +  '"' + max_count_effective + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/yak:0.1--hed695b0_0"
  }
  parameter_meta {
    max_count_effective: "max count (effective with in2.yak) [20]"
    in_one_dot_yak: ""
    in_two_dot_yak: ""
  }
  output {
    File out_stdout = stdout()
  }
}