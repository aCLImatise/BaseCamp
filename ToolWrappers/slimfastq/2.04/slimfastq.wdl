version 1.0

task Slimfastq {
  input {
    Boolean? usrfilename_default_stdin
    File? _required_compressed
    Boolean? decode_instead_encoding
    Boolean? silently_overwrite_files
    Int? compression_level_default
    Boolean? alias_l_etcwhere
    Boolean? version_internal_version
    Boolean? stat_information_compressed
    Boolean? suppress_stats_info
    File usr_filename
  }
  command <<<
    slimfastq \
      ~{usr_filename} \
      ~{if (usrfilename_default_stdin) then "-u" else ""} \
      ~{if defined(_required_compressed) then ("-f " +  '"' + _required_compressed + '"') else ""} \
      ~{if (decode_instead_encoding) then "-d" else ""} \
      ~{if (silently_overwrite_files) then "-O" else ""} \
      ~{if defined(compression_level_default) then ("-l " +  '"' + compression_level_default + '"') else ""} \
      ~{if (alias_l_etcwhere) then "-1" else ""} \
      ~{if (version_internal_version) then "-v" else ""} \
      ~{if (stat_information_compressed) then "-s" else ""} \
      ~{if (suppress_stats_info) then "-q" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/slimfastq:2.04--he1b5a44_0"
  }
  parameter_meta {
    usrfilename_default_stdin: "usr-filename : (default: stdin)"
    _required_compressed: ": required - compressed"
    decode_instead_encoding: ": decode (instead of encoding)"
    silently_overwrite_files: ": silently overwrite existing files"
    compression_level_default: ": compression level 1 to 4 (default is 3 )"
    alias_l_etcwhere: ": alias for -l 1, -l 2, etc\\nWhere levels are:\\n1: Uses less than 4M memory (!), yields the worse compression (still much better than gzip)\\n2: Uses about 30M memory, resonable compression\\n3: Uses about 80M memory, best compression <default level>\\n4: Compress a little more, but very costly (competition mode?)"
    version_internal_version: ": version : internal version"
    stat_information_compressed: ": stat : information about a compressed file"
    suppress_stats_info: ": suppress extra stats info that could have been seen by -s"
    usr_filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}