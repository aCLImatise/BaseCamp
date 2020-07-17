version 1.0

task GenerateNames.pl {
  input {
    String generate_names_do_tpl
  }
  command <<<
    generate-names.pl \
      ~{generate_names_do_tpl}
  >>>
  parameter_meta {
    generate_names_do_tpl: "[ --out <output directory> ]         \ [ --verbose ]"
  }
}