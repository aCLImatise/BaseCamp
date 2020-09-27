version 1.0

task BiomShowinstallinfoFormatorg {
  input {
    String biom
    String show_install_info
  }
  command <<<
    biom show_install_info format_org \
      ~{biom} \
      ~{show_install_info}
  >>>
  parameter_meta {
    biom: ""
    show_install_info: ""
  }
  output {
    File out_stdout = stdout()
  }
}