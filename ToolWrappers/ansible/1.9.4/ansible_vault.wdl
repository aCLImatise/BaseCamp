version 1.0

task Ansiblevault {
  input {
    String? create_vertical_line_decrypt_vertical_line_edit_vertical_line_encrypt_vertical_line_re_key_vertical_line_view
    String file_name
  }
  command <<<
    ansible_vault \
      ~{create_vertical_line_decrypt_vertical_line_edit_vertical_line_encrypt_vertical_line_re_key_vertical_line_view} \
      ~{file_name}
  >>>
  parameter_meta {
    create_vertical_line_decrypt_vertical_line_edit_vertical_line_encrypt_vertical_line_re_key_vertical_line_view: ""
    file_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}