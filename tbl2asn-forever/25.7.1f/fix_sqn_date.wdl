version 1.0

task FixSqnDate {
  input {
    String sqn
  }
  command <<<
    fix-sqn-date \
      ~{sqn}
  >>>
  parameter_meta {
    sqn: "Input SQN file to change date"
  }
}