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
      ~{if (gff_three) then "-gff3" else ""}
  >>>
  parameter_meta {
    gff_three: ""
    var_1: ""
    var_2: ""
  }
  output {
    File out_stdout = stdout()
  }
}