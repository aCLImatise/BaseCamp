version 1.0

task FixSqnDate {
  input {
    String? sqnSqn
  }
  command <<<
    fix-sqn-date \
      ~{sqnSqn}
  >>>
}