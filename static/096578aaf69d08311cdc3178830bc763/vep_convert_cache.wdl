version 1.0

task VepConvertCache.pl {
  input {
    String perl
    String convert_cache_do_tpl
    String? arguments
  }
  command <<<
    vep_convert_cache.pl \
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