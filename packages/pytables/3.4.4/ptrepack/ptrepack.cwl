class: CommandLineTool
id: ptrepack.cwl
inputs:
- id: in_verbose
  doc: show verbose information
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_overwrite
  doc: overwrite destination file
  type: boolean
  inputBinding:
    prefix: --overwrite
- id: in_range
  doc: "select a RANGE of rows (in the form \"start,stop,step\")\nduring the copy\
    \ of *all* the leaves. Default values\nare \"None,None,1\", which means a copy\
    \ of all the rows."
  type: long
  inputBinding:
    prefix: --range
- id: in_non_recursive
  doc: do not do a recursive copy. Default is to do it
  type: boolean
  inputBinding:
    prefix: --non-recursive
- id: in_dest_title
  doc: "title for the new file (if not specified, the source\nis copied)"
  type: File
  inputBinding:
    prefix: --dest-title
- id: in_dont_create_sys_attrs
  doc: do not create sys attrs (default is to do it)
  type: boolean
  inputBinding:
    prefix: --dont-create-sysattrs
- id: in_dont_copy_user_attrs
  doc: do not copy the user attrs (default is to do it)
  type: boolean
  inputBinding:
    prefix: --dont-copy-userattrs
- id: in_overwrite_nodes
  doc: "overwrite destination nodes if they exist. Default is\nto not overwrite them"
  type: boolean
  inputBinding:
    prefix: --overwrite-nodes
- id: in_comp_level
  doc: "set a compression level (0 for no compression, which\nis the default)"
  type: long
  inputBinding:
    prefix: --complevel
- id: in_comp_lib
  doc: "{zlib,lzo,bzip2,blosc,blosc:blosclz,blosc:lz4,blosc:lz4hc,blosc:snappy,blosc:zlib,blosc:zstd}\n\
    set the compression library to be used during the\ncopy. Defaults to zlib"
  type: boolean
  inputBinding:
    prefix: --complib
- id: in_shuffle
  doc: "activate or not the shuffle filter (default is active\nif complevel > 0)"
  type: string
  inputBinding:
    prefix: --shuffle
- id: in_bit_shuffle
  doc: "activate or not the bitshuffle filter (not active by\ndefault)"
  type: string
  inputBinding:
    prefix: --bitshuffle
- id: in_fletcher_three_two
  doc: "whether to activate or not the fletcher32 filter (not\nactive by default)"
  type: string
  inputBinding:
    prefix: --fletcher32
- id: in_keep_source_filters
  doc: "use the original filters in source files. The default\nis not doing that if\
    \ any of --complevel, --complib,\n--shuffle --bitshuffle or --fletcher32 option\
    \ is\nspecified"
  type: boolean
  inputBinding:
    prefix: --keep-source-filters
- id: in_chunk_shape
  doc: "set a chunkshape. Possible options are: \"keep\" |\n\"auto\" | int | tuple.\
    \ A value of \"auto\" computes a\nsensible value for the chunkshape of the leaves\n\
    copied. The default is to \"keep\" the original value"
  type: long
  inputBinding:
    prefix: --chunkshape
- id: in_upgrade_flavors
  doc: "when repacking PyTables 1.x or PyTables 2.x files, the\nflavor of leaves will\
    \ be unset. With this, such a\nleaves will be serialized as objects with the internal\n\
    flavor ('numpy' for 3.x series)"
  type: boolean
  inputBinding:
    prefix: --upgrade-flavors
- id: in_dont_regenerate_old_indexes
  doc: "disable regenerating old indexes. The default is to\nregenerate old indexes\
    \ as they are found"
  type: boolean
  inputBinding:
    prefix: --dont-regenerate-old-indexes
- id: in_sort_by
  doc: "do a table copy sorted by the index in \"column\". For\nreversing the order,\
    \ use a negative value in the\n\"step\" part of \"RANGE\" (see \"-r\" flag). Only\
    \ applies\nto table objects"
  type: string
  inputBinding:
    prefix: --sortby
- id: in_check_csi
  doc: Force the check for a CSI index for the --sortby
  type: boolean
  inputBinding:
    prefix: --checkCSI
- id: in_column
  doc: --propindexes         propagate the indexes existing in original tables. The
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ptrepack
