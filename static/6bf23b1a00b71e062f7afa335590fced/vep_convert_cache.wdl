version 1.0

task VepConvertCache {
  input {
    Boolean? quiet
    Boolean? force_overwrite
    Boolean? remove
    Boolean? dir
    Boolean? species
    Boolean? compress
    Boolean? b_gzip
    Boolean? tab_ix
    String perl
    String convert_cache_do_tpl
    String? arguments
  }
  command <<<
    vep_convert_cache \
      ~{perl} \
      ~{convert_cache_do_tpl} \
      ~{arguments} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (force_overwrite) then "--force_overwrite" else ""} \
      ~{if (remove) then "--remove" else ""} \
      ~{if (dir) then "--dir" else ""} \
      ~{if (species) then "--species" else ""} \
      ~{if (compress) then "--compress" else ""} \
      ~{if (b_gzip) then "--bgzip" else ""} \
      ~{if (tab_ix) then "--tabix" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    quiet: "Shhh!"
    force_overwrite: "Overwrite existing cache files if found"
    remove: "Remove old cache files after conversion"
    dir: "[dir]          -d   Cache directory (default: $HOME/.vep)"
    species: "[species]  -s   Species cache to convert (\\\"all\\\" to do all found)"
    compress: "[cmd]     -c   Path to binary/command to decompress gzipped files.\\nDefaults to \\\"gzip -dc\\\", some systems may prefer \\\"zcat\\\""
    b_gzip: "[cmd]        -b   Path to bgzip binary (default: bgzip)"
    tab_ix: "[cmd]        -t   Path to tabix binary (default: tabix)"
    perl: ""
    convert_cache_do_tpl: ""
    arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}