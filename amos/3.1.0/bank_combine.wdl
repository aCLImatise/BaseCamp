version 1.0

task BankCombine {
  input {
    String in_n
  }
  command <<<
    bank-combine \
      ~{in_n}
  >>>
  parameter_meta {
    in_n: ""
  }
}