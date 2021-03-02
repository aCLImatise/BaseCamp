version 1.0

task Pysamstats {
  input {
    String? type
    String? chromosome
    Int? start
    Int? end
    Boolean? zero_based
    Boolean? truncate
    File? stepper
    Boolean? pad
    Int? max_depth
    File? fast_a
    Boolean? omit_header
    String? progress
    Int? window_size
    Int? window_offset
    Int? format
    File? path_output_file
    String? fields
    Int? hdf_five_group
    Int? hdf_five_dataset
    Int? hdf_five_comp_lib
    Int? hdf_five_comp_level
    Int? hdf_five_chunksize
    Int? min_mapq
    Int? min_base_q
    Boolean? no_dup
    Boolean? no_del
    File var_file
  }
  command <<<
    pysamstats \
      ~{var_file} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(chromosome) then ("--chromosome " +  '"' + chromosome + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(end) then ("--end " +  '"' + end + '"') else ""} \
      ~{if (zero_based) then "--zero-based" else ""} \
      ~{if (truncate) then "--truncate" else ""} \
      ~{if defined(stepper) then ("--stepper " +  '"' + stepper + '"') else ""} \
      ~{if (pad) then "--pad" else ""} \
      ~{if defined(max_depth) then ("--max-depth " +  '"' + max_depth + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if (omit_header) then "--omit-header" else ""} \
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
      ~{if (no_dup) then "--no-dup" else ""} \
      ~{if (no_del) then "--no-del" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    type: "Type of statistics to print, one of: alignment_binned,\\nbaseq, baseq_ext, baseq_ext_strand, baseq_strand,\\ncoverage, coverage_binned, coverage_ext,\\ncoverage_ext_binned, coverage_ext_strand, coverage_gc,\\ncoverage_strand, mapq, mapq_binned, mapq_strand, tlen,\\ntlen_binned, tlen_strand, variation, variation_strand."
    chromosome: "Chromosome name."
    start: "Start position (1-based)."
    end: "End position (1-based)."
    zero_based: "Use zero-based coordinates (default is false, i.e.,\\nuse one-based coords)."
    truncate: "Truncate pileup-based stats so no records are emitted\\noutside the specified range."
    stepper: "Stepper to provide to underlying pysam call. Options\\nare:\\\"all\\\" (default): all reads are returned, except\\nwhere flags BAM_FUNMAP, BAM_FSECONDARY, BAM_FQCFAIL,\\nBAM_FDUP set; \\\"nofilter\\\" applies no filter to returned\\nreads; \\\"samtools\\\": filter & read processing as in\\n_csamtools_ pileup. This requires a fasta file. For\\ncomplete details see the pysam documentation."
    pad: "Pad pileup-based stats so a record is emitted for\\nevery position (default is only covered positions)."
    max_depth: "Maximum read depth permitted in pileup-based\\nstatistics. The default limit is 8000."
    fast_a: "Reference sequence file, only required for some\\nstatistics."
    omit_header: "Omit header row from output."
    progress: "Report progress every N rows."
    window_size: "Size of window for binned statistics (default is 300)."
    window_offset: "Window offset to use for deciding which genome\\nposition to report binned statistics against. The\\ndefault is 150, i.e., the middle of 300bp window."
    format: "Output format, one of {tsv, csv, hdf5} (defaults to\\ntsv). N.B., hdf5 requires PyTables to be installed."
    path_output_file: "Path to output file. If not provided, write to stdout."
    fields: "Comma-separated list of fields to output (defaults to\\nall fields)."
    hdf_five_group: "Name of HDF5 group to write to (defaults to the root\\ngroup)."
    hdf_five_dataset: "Name of HDF5 dataset to create (defaults to \\\"data\\\")."
    hdf_five_comp_lib: "HDF5 compression library (defaults to zlib)."
    hdf_five_comp_level: "HDF5 compression level (defaults to 5)."
    hdf_five_chunksize: "Size of chunks in number of bytes (defaults to 2**20)."
    min_mapq: "Only reads with mapping quality equal to or greater\\nthan this value will be counted (0 by default)."
    min_base_q: "Only reads with base quality equal to or greater than\\nthis value will be counted (0 by default). Only\\napplies to pileup-based statistics."
    no_dup: "Don't count reads flagged as duplicate."
    no_del: "Don't count reads aligned with a deletion at the given\\nposition. Only applies to pileup-based statistics."
    var_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_path_output_file = "${in_path_output_file}"
  }
}