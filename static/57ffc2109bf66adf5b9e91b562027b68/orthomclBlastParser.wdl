version 1.0

task OrthomclBlastParser {
  input {
    String orthomcl_adjust_fast_a
  }
  command <<<
    orthomclBlastParser \
      ~{orthomcl_adjust_fast_a}
  >>>
  parameter_meta {
    orthomcl_adjust_fast_a: "m8 format has these columns:"
  }
  output {
    File out_stdout = stdout()
  }
}