version 1.0

task H5repack {
  input {
    Boolean? verbose
    Boolean? native
    Boolean? enable_error_stack
    Boolean? latest
    File? low
    File? high
    Int? compact
    Int? indexed
    Int? shared_object_header
    String? minimum
    File? name_file_e
    File? u_block
    Int? block
    Int? metadata_block_size
    Int? threshold
    Int? alignment
    String? sort_by
    String? sort_order
    String? filter
    String? layout
    File? fs_strategy
    Int? fs_persist
    Int? fs_threshold
    Int? fs_pagesize
    Int file_one
    Int file_two
    String options
  }
  command <<<
    h5repack \
      ~{file_one} \
      ~{file_two} \
      ~{options} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (native) then "--native" else ""} \
      ~{if (enable_error_stack) then "--enable-error-stack" else ""} \
      ~{if (latest) then "--latest" else ""} \
      ~{if defined(low) then ("--low " +  '"' + low + '"') else ""} \
      ~{if defined(high) then ("--high " +  '"' + high + '"') else ""} \
      ~{if defined(compact) then ("--compact " +  '"' + compact + '"') else ""} \
      ~{if defined(indexed) then ("--indexed " +  '"' + indexed + '"') else ""} \
      ~{if defined(shared_object_header) then ("-s " +  '"' + shared_object_header + '"') else ""} \
      ~{if defined(minimum) then ("--minimum " +  '"' + minimum + '"') else ""} \
      ~{if defined(name_file_e) then ("--file " +  '"' + name_file_e + '"') else ""} \
      ~{if defined(u_block) then ("--ublock " +  '"' + u_block + '"') else ""} \
      ~{if defined(block) then ("--block " +  '"' + block + '"') else ""} \
      ~{if defined(metadata_block_size) then ("--metadata_block_size " +  '"' + metadata_block_size + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(alignment) then ("--alignment " +  '"' + alignment + '"') else ""} \
      ~{if defined(sort_by) then ("--sort_by " +  '"' + sort_by + '"') else ""} \
      ~{if defined(sort_order) then ("--sort_order " +  '"' + sort_order + '"') else ""} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""} \
      ~{if defined(layout) then ("--layout " +  '"' + layout + '"') else ""} \
      ~{if defined(fs_strategy) then ("--fs_strategy " +  '"' + fs_strategy + '"') else ""} \
      ~{if defined(fs_persist) then ("--fs_persist " +  '"' + fs_persist + '"') else ""} \
      ~{if defined(fs_threshold) then ("--fs_threshold " +  '"' + fs_threshold + '"') else ""} \
      ~{if defined(fs_pagesize) then ("--fs_pagesize " +  '"' + fs_pagesize + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Verbose mode, print object information"
    native: "Use a native HDF5 type when repacking"
    enable_error_stack: "Prints messages from the HDF5 error stack as they occur"
    latest: "Use latest version of file format\\nThis option will take precedence over the -j and -k options"
    low: "The low bound for library release versions to use when creating\\nobjects in the file (default is H5F_LIBVER_EARLIEST)"
    high: "The high bound for library release versions to use when creating\\nobjects in the file (default is H5F_LIBVER_LATEST)"
    compact: "Maximum number of links in header messages"
    indexed: "Minimum number of links in the indexed format"
    shared_object_header: "[:F], --ssize=S[:F] Shared object header message minimum size"
    minimum: "Do not apply the filter to datasets smaller than M"
    name_file_e: "Name of file E with the -f and -l options"
    u_block: "Name of file U with user block data to be added"
    block: "Size of user block to be added"
    metadata_block_size: "Metadata block size for H5Pset_meta_block_size"
    threshold: "Threshold value for H5Pset_alignment"
    alignment: "Alignment value for H5Pset_alignment"
    sort_by: "Sort groups and attributes by index Q"
    sort_order: "Sort groups and attributes by order Z"
    filter: "Filter type"
    layout: "Layout type"
    fs_strategy: "File space management strategy for H5Pset_file_space_strategy"
    fs_persist: "Persisting or not persisting free-space for H5Pset_file_space_strategy"
    fs_threshold: "Free-space section threshold for H5Pset_file_space_strategy"
    fs_pagesize: "File space page size for H5Pset_file_space_page_size\\nM - is an integer greater than 1, size of dataset in bytes (default is 0)\\nE - is a filename.\\nS - is an integer\\nU - is a filename.\\nT - is an integer\\nA - is an integer greater than zero\\nQ - is the sort index type for the input file. It can be \\\"name\\\" or \\\"creation_order\\\" (default)\\nZ - is the sort order type for the input file. It can be \\\"descending\\\" or \\\"ascending\\\" (default)\\nB - is the user block size, any value that is 512 or greater and is\\na power of 2 (1024 default)\\nF - is the shared object header message type, any of <dspace|dtype|fill|\\npline|attr>. If F is not specified, S applies to all messages\\nBOUND is an integer indicating the library release versions to use when creating\\nobjects in the file (see H5Pset_libver_bounds()):\\n0: This is H5F_LIBVER_EARLIEST in H5F_libver_t struct\\n1: This is H5F_LIBVER_V18 in H5F_libver_t struct\\n2: This is H5F_LIBVER_V110 in H5F_libver_t struct\\n(H5F_LIBVER_LATEST is aliased to H5F_LIBVER_V110 for this release\\nFS_STRATEGY is a string indicating the file space strategy used:\\nFSM_AGGR:\\nThe mechanisms used in managing file space are free-space managers, aggregators and virtual file driver.\\nPAGE:\\nThe mechanisms used in managing file space are free-space managers with embedded paged aggregation and virtual file driver.\\nAGGR:\\nThe mechanisms used in managing file space are aggregators and virtual file driver.\\nNONE:\\nThe mechanisms used in managing file space are virtual file driver.\\nThe default strategy when not set is FSM_AGGR without persisting free-space.\\nFS_PERSIST is 1 to persisting free-space or 0 to not persisting free-space.\\nThe default when not set is not persisting free-space.\\nThe value is ignored for AGGR and NONE strategies.\\nFS_THRESHOLD is the minimum size (in bytes) of free-space sections to be tracked by the library.\\nThe default when not set is 1.\\nThe value is ignored for AGGR and NONE strategies.\\nFS_PAGESIZE is the size (in bytes) >=512 that is used by the library when the file space strategy PAGE is used.\\nThe default when not set is 4096.\\nFILT - is a string with the format:\\n<list of objects>:<name of filter>=<filter parameters>\\n<list of objects> is a comma separated list of object names, meaning apply\\ncompression only to those objects. If no names are specified, the filter\\nis applied to all objects\\n<name of filter> can be:\\nGZIP, to apply the HDF5 GZIP filter (GZIP compression)\\nSZIP, to apply the HDF5 SZIP filter (SZIP compression)\\nSHUF, to apply the HDF5 shuffle filter\\nFLET, to apply the HDF5 checksum filter\\nNBIT, to apply the HDF5 NBIT filter (NBIT compression)\\nSOFF, to apply the HDF5 Scale/Offset filter\\nUD,   to apply a user defined filter\\nNONE, to remove all filters\\n<filter parameters> is optional filter parameter information\\nGZIP=<deflation level> from 1-9\\nSZIP=<pixels per block,coding> pixels per block is a even number in\\n2-32 and coding method is either EC or NN\\nSHUF (no parameter)\\nFLET (no parameter)\\nNBIT (no parameter)\\nSOFF=<scale_factor,scale_type> scale_factor is an integer and scale_type\\nis either IN or DS\\nUD=<filter_number,filter_flag,cd_value_count,value_1[,value_2,...,value_N]>\\nrequired values for filter_number,filter_flag,cd_value_count,value_1\\noptional values for value_2 to value_N\\nNONE (no parameter)\\nLAYT - is a string with the format:\\n<list of objects>:<layout type>=<layout parameters>\\n<list of objects> is a comma separated list of object names, meaning that\\nlayout information is supplied for those objects. If no names are\\nspecified, the layout type is applied to all objects\\n<layout type> can be:\\nCHUNK, to apply chunking layout\\nCOMPA, to apply compact layout\\nCONTI, to apply contiguous layout\\n<layout parameters> is optional layout information\\nCHUNK=DIM[xDIM...xDIM], the chunk size of each dimension\\nCOMPA (no parameter)\\nCONTI (no parameter)"
    file_one: "Input HDF5 File"
    file_two: "Output HDF5 File"
    options: "-h, --help              Print a usage message and exit"
  }
  output {
    File out_stdout = stdout()
  }
}