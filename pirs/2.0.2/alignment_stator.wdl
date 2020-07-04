version 1.0

task AlignmentStator {
  input {
    String? pause_batch_runsm
  }
  command <<<
    alignment_stator \
      ~{if defined(pause_batch_runsm) then ("-b " +  '"' + pause_batch_runsm + '"') else ""}
  >>>
  parameter_meta {
    pause_batch_runsm: "pause for batch runs[32;1m"
  }
}