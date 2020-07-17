version 1.0

task Splitsam6way.sh {
  input {
    String var_input
    String r_one_plus
    String r_one_minus
    String r_one_unmapped
    String r_two_plus
    String r_two_minus
    String r_two_unmapped
  }
  command <<<
    splitsam6way.sh \
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
}