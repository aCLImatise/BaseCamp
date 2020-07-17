version 1.0

task Dless {
  input {
    File? in_del_history
    String alignment
    String tree_dot_mod
  }
  command <<<
    dless \
      ~{alignment} \
      ~{tree_dot_mod} \
      ~{if defined(in_del_history) then ("--indel-history " +  '"' + in_del_history + '"') else ""}
  >>>
  parameter_meta {
    in_del_history: "(for use with --indel-model) Use the specified indel history (see indelHistory)."
    alignment: ""
    tree_dot_mod: ""
  }
}