version 1.0

task Pysamstats {
  input {
    String? type
    String? chromosome
    String? start
    String? end
    Boolean? zero_based
    Boolean? truncate
    String? stepper
    Boolean? pad
    Int? max_depth
    String? fast_a
    Boolean? omit_header
    String? progress
    String? window_size
    String? window_offset
    String? format
    String? path_output_file
    String? fields
    String? hdf_five_group
    String? hdf_five_dataset
    String? hdf_five_comp_lib
    String? hdf_five_comp_level
    String? hdf_five_chunksize
    Int? min_mapq
    Int? min_base_q
    Boolean? no_dup
    Boolean? no_del
    File file
  }
  command <<<
    pysamstats \
      ~{file} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(chromosome) then ("--chromosome " +  '"' + chromosome + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(end) then ("--end " +  '"' + end + '"') else ""} \
      ~{true="--zero-based" false="" zero_based} \
      ~{true="--truncate" false="" truncate} \
      ~{if defined(stepper) then ("--stepper " +  '"' + stepper + '"') else ""} \
      ~{true="--pad" false="" pad} \
      ~{if defined(max_depth) then ("--max-depth " +  '"' + max_depth + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{true="--omit-header" false="" omit_header} \
      ~{if defined(progress) then ("--progress " +  '"' + progress + '"') else ""} \
      ~{if defined(window_size) then ("--window-size " +  '"' + window_size + '"') else ""} \
      ~{if defined(window_offset) then ("--window-offset " +  '"' + window_offset + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(path_output_file) then ("--output " +  '"' + path_output_file + '"') else ""} \
      ~{if defined(fields) then ("--fields " +  '"' + fields + '"') else ""} \
      ~{if defined(hdf_five_group) then ("--hdf5-group " +  '"' + hdf_five_group + '"') else ""} \
      ~{if defined(hdf_five_dataset) then ("--hdf5-dataset " +  '"' + hdf_five_dataset + '"') else ""} \
      ~{if defined(hdf_five_comp_lib) then ("--hdf5-complib " +  '"' + hdf_five_comp_lib + '"') else ""} \
      ~{if defined(hdf_five_comp_level) then ("--hdf5-complevel " +  '"' + hdf_five_comp_level + '"') else ""} \
      ~{if defined(hdf_five_chunksize) then ("--hdf5-chunksize " +  '"' + hdf_five_chunksize + '"') else ""} \
      ~{if defined(min_mapq) then ("--min-mapq " +  '"' + min_mapq + '"') else ""} \
      ~{if defined(min_base_q) then ("--min-baseq " +  '"' + min_base_q + '"') else ""} \
      ~{true="--no-dup" false="" no_dup} \
      ~{true="--no-del" false="" no_del}
  >>>
  parameter_meta {
    type: "Type of statistics to print, one of: alignment_binned, baseq, baseq_ext, baseq_ext_strand, baseq_strand, coverage, coverage_binned, coverage_ext, coverage_ext_binned, coverage_ext_strand, coverage_gc, coverage_strand, mapq, mapq_binned, mapq_strand, tlen, tlen_binned, tlen_strand, variation, variation_strand."
    chromosome: "Chromosome name."
    start: "Start position (1-based)."
    end: "End position (1-based)."
    zero_based: "Use zero-based coordinates (default is false, i.e., use one-based coords)."
    truncate: "Truncate pileup-based stats so no records are emitted outside the specified range."
    stepper: "Stepper to provide to underlying pysam call. Options are:\"all\" (default): all reads are returned, except where flags BAM_FUNMAP, BAM_FSECONDARY, BAM_FQCFAIL, BAM_FDUP set; \"nofilter\" applies no filter to returned reads; \"samtools\": filter & read processing as in _csamtools_ pileup. This requires a fasta file. For complete details see the pysam documentation."
    pad: "Pad pileup-based stats so a record is emitted for every position (default is only covered positions)."
    max_depth: "Maximum read depth permitted in pileup-based statistics. The default limit is 8000."
    fast_a: "Reference sequence file, only required for some statistics."
    omit_header: "Omit header row from output."
    progress: "Report progress every N rows."
    window_size: "Size of window for binned statistics (default is 300)."
    window_offset: "Window offset to use for deciding which genome position to report binned statistics against. The default is 150, i.e., the middle of 300bp window."
    format: "Output format, one of {tsv, csv, hdf5} (defaults to tsv). N.B., hdf5 requires PyTables to be installed."
    path_output_file: "Path to output file. If not provided, write to stdout."
    fields: "Comma-separated list of fields to output (defaults to all fields)."
    hdf_five_group: "Name of HDF5 group to write to (defaults to the root group)."
    hdf_five_dataset: "Name of HDF5 dataset to create (defaults to \"data\")."
    hdf_five_comp_lib: "HDF5 compression library (defaults to zlib)."
    hdf_five_comp_level: "HDF5 compression level (defaults to 5)."
    hdf_five_chunksize: "Size of chunks in number of bytes (defaults to 2**20)."
    min_mapq: "Only reads with mapping quality equal to or greater than this value will be counted (0 by default)."
    min_base_q: "Only reads with base quality equal to or greater than this value will be counted (0 by default). Only applies to pileup-based statistics."
    no_dup: "Don't count reads flagged as duplicate."
    no_del: "Don't count reads aligned with a deletion at the given position. Only applies to pileup-based statistics."
    file: ""
  }
}