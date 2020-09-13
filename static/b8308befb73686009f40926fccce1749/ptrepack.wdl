version 1.0

task Ptrepack {
  input {
    Boolean? verbose
    Boolean? overwrite
    Int? range
    Boolean? non_recursive
    File? dest_title
    Boolean? dont_create_sys_attrs
    Boolean? dont_copy_user_attrs
    Boolean? overwrite_nodes
    Int? comp_level
    Boolean? comp_lib
    String? shuffle
    String? bit_shuffle
    String? fletcher_three_two
    Boolean? keep_source_filters
    Int? chunk_shape
    Boolean? upgrade_flavors
    Boolean? dont_regenerate_old_indexes
    String? sort_by
    Boolean? check_csi
    String column
  }
  command <<<
    ptrepack \
      ~{column} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (overwrite) then "--overwrite" else ""} \
      ~{if defined(range) then ("--range " +  '"' + range + '"') else ""} \
      ~{if (non_recursive) then "--non-recursive" else ""} \
      ~{if defined(dest_title) then ("--dest-title " +  '"' + dest_title + '"') else ""} \
      ~{if (dont_create_sys_attrs) then "--dont-create-sysattrs" else ""} \
      ~{if (dont_copy_user_attrs) then "--dont-copy-userattrs" else ""} \
      ~{if (overwrite_nodes) then "--overwrite-nodes" else ""} \
      ~{if defined(comp_level) then ("--complevel " +  '"' + comp_level + '"') else ""} \
      ~{if (comp_lib) then "--complib" else ""} \
      ~{if defined(shuffle) then ("--shuffle " +  '"' + shuffle + '"') else ""} \
      ~{if defined(bit_shuffle) then ("--bitshuffle " +  '"' + bit_shuffle + '"') else ""} \
      ~{if defined(fletcher_three_two) then ("--fletcher32 " +  '"' + fletcher_three_two + '"') else ""} \
      ~{if (keep_source_filters) then "--keep-source-filters" else ""} \
      ~{if defined(chunk_shape) then ("--chunkshape " +  '"' + chunk_shape + '"') else ""} \
      ~{if (upgrade_flavors) then "--upgrade-flavors" else ""} \
      ~{if (dont_regenerate_old_indexes) then "--dont-regenerate-old-indexes" else ""} \
      ~{if defined(sort_by) then ("--sortby " +  '"' + sort_by + '"') else ""} \
      ~{if (check_csi) then "--checkCSI" else ""}
  >>>
  parameter_meta {
    verbose: "show verbose information"
    overwrite: "overwrite destination file"
    range: "select a RANGE of rows (in the form \\\"start,stop,step\\\")\\nduring the copy of *all* the leaves. Default values\\nare \\\"None,None,1\\\", which means a copy of all the rows."
    non_recursive: "do not do a recursive copy. Default is to do it"
    dest_title: "title for the new file (if not specified, the source\\nis copied)"
    dont_create_sys_attrs: "do not create sys attrs (default is to do it)"
    dont_copy_user_attrs: "do not copy the user attrs (default is to do it)"
    overwrite_nodes: "overwrite destination nodes if they exist. Default is\\nto not overwrite them"
    comp_level: "set a compression level (0 for no compression, which\\nis the default)"
    comp_lib: "{zlib,lzo,bzip2,blosc,blosc:blosclz,blosc:lz4,blosc:lz4hc,blosc:snappy,blosc:zlib,blosc:zstd}\\nset the compression library to be used during the\\ncopy. Defaults to zlib"
    shuffle: "activate or not the shuffle filter (default is active\\nif complevel > 0)"
    bit_shuffle: "activate or not the bitshuffle filter (not active by\\ndefault)"
    fletcher_three_two: "whether to activate or not the fletcher32 filter (not\\nactive by default)"
    keep_source_filters: "use the original filters in source files. The default\\nis not doing that if any of --complevel, --complib,\\n--shuffle --bitshuffle or --fletcher32 option is\\nspecified"
    chunk_shape: "set a chunkshape. Possible options are: \\\"keep\\\" |\\n\\\"auto\\\" | int | tuple. A value of \\\"auto\\\" computes a\\nsensible value for the chunkshape of the leaves\\ncopied. The default is to \\\"keep\\\" the original value"
    upgrade_flavors: "when repacking PyTables 1.x or PyTables 2.x files, the\\nflavor of leaves will be unset. With this, such a\\nleaves will be serialized as objects with the internal\\nflavor ('numpy' for 3.x series)"
    dont_regenerate_old_indexes: "disable regenerating old indexes. The default is to\\nregenerate old indexes as they are found"
    sort_by: "do a table copy sorted by the index in \\\"column\\\". For\\nreversing the order, use a negative value in the\\n\\\"step\\\" part of \\\"RANGE\\\" (see \\\"-r\\\" flag). Only applies\\nto table objects"
    check_csi: "Force the check for a CSI index for the --sortby"
    column: "--propindexes         propagate the indexes existing in original tables. The"
  }
  output {
    File out_stdout = stdout()
  }
}