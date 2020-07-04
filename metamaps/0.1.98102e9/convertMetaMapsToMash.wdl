version 1.0

task ConvertMetaMapsToMash.pl {
  input {
    String perl
    String convert_meta_map_to_mash_do_tpl
    String dbname
  }
  command <<<
    convertMetaMapsToMash.pl \
      ~{perl} \
      ~{convert_meta_map_to_mash_do_tpl} \
      ~{dbname}
  >>>
  parameter_meta {
    perl: ""
    convert_meta_map_to_mash_do_tpl: ""
    dbname: ""
  }
}