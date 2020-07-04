version 1.0

task VepConvertCache {
  input {
    String perl
    String convert_cache_do_tpl
    String? arguments
  }
  command <<<
    vep_convert_cache \
      ~{perl} \
      ~{convert_cache_do_tpl} \
      ~{arguments}
  >>>
  parameter_meta {
    perl: ""
    convert_cache_do_tpl: ""
    arguments: ""
  }
}