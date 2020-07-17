version 1.0

task CentrifugeCompress.pl {
  input {
    String? var_map
    String? o
    Boolean? no_compress
    String? t
    String? maxg
    Boolean? no_dust_masker
    File path_to_download_files
    File path_to_tax_no_no_my
  }
  command <<<
    centrifuge-compress.pl \
      ~{path_to_download_files} \
      ~{path_to_tax_no_no_my} \
      ~{if defined(var_map) then ("-map " +  '"' + var_map + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{true="-noCompress" false="" no_compress} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(maxg) then ("-maxG " +  '"' + maxg + '"') else ""} \
      ~{true="-noDustmasker" false="" no_dust_masker}
  >>>
  parameter_meta {
    var_map: ""
    o: ""
    no_compress: ""
    t: ""
    maxg: ""
    no_dust_masker: ""
    path_to_download_files: ""
    path_to_tax_no_no_my: ""
  }
}