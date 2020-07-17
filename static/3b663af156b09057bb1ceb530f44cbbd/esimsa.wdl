version 1.0

task Esimsa {
  input {
    String peak_list
    Int max_charge
    String var_output
  }
  command <<<
    esimsa \
      ~{peak_list} \
      ~{max_charge} \
      ~{var_output}
  >>>
  parameter_meta {
    peak_list: ""
    max_charge: ""
    var_output: ""
  }
}