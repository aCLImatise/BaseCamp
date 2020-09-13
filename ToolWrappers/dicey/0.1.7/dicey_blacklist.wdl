version 1.0

task DiceyBlacklist {
  input {
    Boolean? arg_blacklist_bed
    File? arg_gzipped_file
    String danio_rerio_dot_fado_tgz
  }
  command <<<
    dicey blacklist \
      ~{danio_rerio_dot_fado_tgz} \
      ~{if (arg_blacklist_bed) then "-b" else ""} \
      ~{if (arg_gzipped_file) then "-o" else ""}
  >>>
  parameter_meta {
    arg_blacklist_bed: "[ --blacklist ] arg (=\\\"blacklist.bed\\\")\\nblacklist in BED format"
    arg_gzipped_file: "[ --outfile ] arg (=\\\"map.fa.gz\\\")   gzipped output file"
    danio_rerio_dot_fado_tgz: ""
  }
  output {
    File out_stdout = stdout()
    File out_arg_gzipped_file = "${in_arg_gzipped_file}"
  }
}