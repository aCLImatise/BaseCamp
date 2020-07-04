version 1.0

task VepInstall.pl {
  input {
    String perl
    String install_do_tpl
    String? arguments
  }
  command <<<
    vep_install.pl \
      ~{perl} \
      ~{install_do_tpl} \
      ~{arguments}
  >>>
  parameter_meta {
    perl: ""
    install_do_tpl: ""
    arguments: ""
  }
}