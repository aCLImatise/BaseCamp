version 1.0

task RenameReads {
  input {
    String bank_name
    String old_iid_dot_new_iid
  }
  command <<<
    renameReads \
      ~{bank_name} \
      ~{old_iid_dot_new_iid}
  >>>
  parameter_meta {
    bank_name: ""
    old_iid_dot_new_iid: ""
  }
  output {
    File out_stdout = stdout()
  }
}