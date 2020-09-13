version 1.0

task ConvertMetaMapsToMashpl {
  input {
    String perl
    String convert_meta_map_to_mash_do_tpl
  }
  command <<<
    convertMetaMapsToMash_pl \
      ~{perl} \
      ~{convert_meta_map_to_mash_do_tpl}
  >>>
  parameter_meta {
    perl: ""
    convert_meta_map_to_mash_do_tpl: ""
  }
  output {
    File out_stdout = stdout()
  }
}