version 1.0

task BankTutorial {
  input {
    String bank_name_slash
  }
  command <<<
    bank-tutorial \
      ~{bank_name_slash}
  >>>
  parameter_meta {
    bank_name_slash: ""
  }
}