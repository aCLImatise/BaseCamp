version 1.0

task UcscToJson.pl {
  input {
    String ucsc_to_json_do_tpl
  }
  command <<<
    ucsc-to-json.pl \
      ~{ucsc_to_json_do_tpl}
  >>>
  parameter_meta {
    ucsc_to_json_do_tpl: "--in <database dump dir>                       \ [ --out <output directory> ]                   \ [ --track <table name> ]                       \ [ --cssClass <class> ]                         \ [ --primaryName <name column> ]                \ [ --arrowheadClass <class> ]                   \ [ --subfeatureClasses <subfeature class map> ] \ [ --clientConfig <JSON client config> ]        \ [ --nclChunk <NCL chunk size in bytes> ]       \ [ --compress ]                                 \ [ --sortMem <sort memory size> ]"
  }
}