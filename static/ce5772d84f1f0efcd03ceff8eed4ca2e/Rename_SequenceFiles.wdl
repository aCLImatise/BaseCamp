version 1.0

task RenameSequenceFiles.sh {
  input {
    String rename_for_d_docent_dots_h
    String names_file
  }
  command <<<
    Rename_SequenceFiles.sh \
      ~{rename_for_d_docent_dots_h} \
      ~{names_file}
  >>>
  parameter_meta {
    rename_for_d_docent_dots_h: ""
    names_file: ""
  }
}