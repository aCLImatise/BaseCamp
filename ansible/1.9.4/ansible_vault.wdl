version 1.0

task AnsibleVault {
  input {
    String? create_vertical_line_decrypt_vertical_line_edit_vertical_line_encrypt_vertical_line_re_key_vertical_line_view
    File file_name
  }
  command <<<
    ansible-vault \
      ~{create_vertical_line_decrypt_vertical_line_edit_vertical_line_encrypt_vertical_line_re_key_vertical_line_view} \
      ~{file_name}
  >>>
  parameter_meta {
    create_vertical_line_decrypt_vertical_line_edit_vertical_line_encrypt_vertical_line_re_key_vertical_line_view: ""
    file_name: ""
  }
}