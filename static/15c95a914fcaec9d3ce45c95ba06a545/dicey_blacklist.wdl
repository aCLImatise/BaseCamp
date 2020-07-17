version 1.0

task DiceyBlacklist {
  input {
    Boolean? arg_blacklist_bed
    Boolean? arg_gzipped_file
    String danio_rerio_dot_fado_tgz
  }
  command <<<
    dicey blacklist \
      ~{danio_rerio_dot_fado_tgz} \
      ~{true="-b" false="" arg_blacklist_bed} \
      ~{true="-o" false="" arg_gzipped_file}
  >>>
  parameter_meta {
    arg_blacklist_bed: "[ --blacklist ] arg (=\"blacklist.bed\") blacklist in BED format"
    arg_gzipped_file: "[ --outfile ] arg (=\"map.fa.gz\")   gzipped output file"
    danio_rerio_dot_fado_tgz: ""
  }
}