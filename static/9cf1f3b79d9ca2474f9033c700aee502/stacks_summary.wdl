version 1.0

task StacksSummary.py {
  input {
    Boolean? stacks_prog
  }
  command <<<
    stacks_summary.py \
      ~{true="--stacks-prog" false="" stacks_prog}
  >>>
  parameter_meta {
    stacks_prog: ""
  }
}