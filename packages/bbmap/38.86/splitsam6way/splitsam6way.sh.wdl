version 1.0

task Splitsam6waysh {
  input {
    String var_input
    Int r_one_plus
    Int r_one_minus
    Int r_one_unmapped
    Int r_two_plus
    Int r_two_minus
    Int r_two_unmapped
  }
  command <<<
    splitsam6way_sh \
      ~{var_input} \
      ~{r_one_plus} \
      ~{r_one_minus} \
      ~{r_one_unmapped} \
      ~{r_two_plus} \
      ~{r_two_minus} \
      ~{r_two_unmapped}
  >>>
  parameter_meta {
    var_input: ""
    r_one_plus: ""
    r_one_minus: ""
    r_one_unmapped: ""
    r_two_plus: ""
    r_two_minus: ""
    r_two_unmapped: ""
  }
  output {
    File out_stdout = stdout()
  }
}