version 1.0

task Stk2ct {
  input {
    Boolean? options
    String give_ct
    String seq_file_in
  }
  command <<<
    stk2ct \
      ~{give_ct} \
      ~{seq_file_in} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    options: ""
    give_ct: ""
    seq_file_in: ""
  }
  output {
    File out_stdout = stdout()
  }
}