version 1.0

task RemoveDuplicate {
  input {
    Boolean? gff_three
    File var_1
    File var_2
  }
  command <<<
    removeDuplicate \
      ~{var_1} \
      ~{var_2} \
      ~{true="-gff3" false="" gff_three}
  >>>
  parameter_meta {
    gff_three: ""
    var_1: ""
    var_2: ""
  }
}