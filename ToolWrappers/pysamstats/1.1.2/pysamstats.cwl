class: CommandLineTool
id: pysamstats.cwl
inputs:
- id: in_type
  doc: "Type of statistics to print, one of: alignment_binned,\nbaseq, baseq_ext,\
    \ baseq_ext_strand, baseq_strand,\ncoverage, coverage_binned, coverage_ext,\n\
    coverage_ext_binned, coverage_ext_strand, coverage_gc,\ncoverage_strand, mapq,\
    \ mapq_binned, mapq_strand, tlen,\ntlen_binned, tlen_strand, variation, variation_strand."
  type: string?
  inputBinding:
    prefix: --type
- id: in_chromosome
  doc: Chromosome name.
  type: string?
  inputBinding:
    prefix: --chromosome
- id: in_start
  doc: Start position (1-based).
  type: long?
  inputBinding:
    prefix: --start
- id: in_end
  doc: End position (1-based).
  type: long?
  inputBinding:
    prefix: --end
- id: in_zero_based
  doc: "Use zero-based coordinates (default is false, i.e.,\nuse one-based coords)."
  type: boolean?
  inputBinding:
    prefix: --zero-based
- id: in_truncate
  doc: "Truncate pileup-based stats so no records are emitted\noutside the specified\
    \ range."
  type: boolean?
  inputBinding:
    prefix: --truncate
- id: in_stepper
  doc: "Stepper to provide to underlying pysam call. Options\nare:\"all\" (default):\
    \ all reads are returned, except\nwhere flags BAM_FUNMAP, BAM_FSECONDARY, BAM_FQCFAIL,\n\
    BAM_FDUP set; \"nofilter\" applies no filter to returned\nreads; \"samtools\"\
    : filter & read processing as in\n_csamtools_ pileup. This requires a fasta file.\
    \ For\ncomplete details see the pysam documentation."
  type: File?
  inputBinding:
    prefix: --stepper
- id: in_pad
  doc: "Pad pileup-based stats so a record is emitted for\nevery position (default\
    \ is only covered positions)."
  type: boolean?
  inputBinding:
    prefix: --pad
- id: in_max_depth
  doc: "Maximum read depth permitted in pileup-based\nstatistics. The default limit\
    \ is 8000."
  type: long?
  inputBinding:
    prefix: --max-depth
- id: in_fast_a
  doc: "Reference sequence file, only required for some\nstatistics."
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_omit_header
  doc: Omit header row from output.
  type: boolean?
  inputBinding:
    prefix: --omit-header
- id: in_progress
  doc: Report progress every N rows.
  type: string?
  inputBinding:
    prefix: --progress
- id: in_window_size
  doc: Size of window for binned statistics (default is 300).
  type: long?
  inputBinding:
    prefix: --window-size
- id: in_window_offset
  doc: "Window offset to use for deciding which genome\nposition to report binned\
    \ statistics against. The\ndefault is 150, i.e., the middle of 300bp window."
  type: long?
  inputBinding:
    prefix: --window-offset
- id: in_format
  doc: "Output format, one of {tsv, csv, hdf5} (defaults to\ntsv). N.B., hdf5 requires\
    \ PyTables to be installed."
  type: long?
  inputBinding:
    prefix: --format
- id: in_output
  doc: Path to output file. If not provided, write to stdout.
  type: File?
  inputBinding:
    prefix: --output
- id: in_fields
  doc: "Comma-separated list of fields to output (defaults to\nall fields)."
  type: string?
  inputBinding:
    prefix: --fields
- id: in_hdf_five_group
  doc: "Name of HDF5 group to write to (defaults to the root\ngroup)."
  type: long?
  inputBinding:
    prefix: --hdf5-group
- id: in_hdf_five_dataset
  doc: Name of HDF5 dataset to create (defaults to "data").
  type: long?
  inputBinding:
    prefix: --hdf5-dataset
- id: in_hdf_five_comp_lib
  doc: HDF5 compression library (defaults to zlib).
  type: long?
  inputBinding:
    prefix: --hdf5-complib
- id: in_hdf_five_comp_level
  doc: HDF5 compression level (defaults to 5).
  type: long?
  inputBinding:
    prefix: --hdf5-complevel
- id: in_hdf_five_chunksize
  doc: Size of chunks in number of bytes (defaults to 2**20).
  type: long?
  inputBinding:
    prefix: --hdf5-chunksize
- id: in_min_mapq
  doc: "Only reads with mapping quality equal to or greater\nthan this value will\
    \ be counted (0 by default)."
  type: long?
  inputBinding:
    prefix: --min-mapq
- id: in_min_base_q
  doc: "Only reads with base quality equal to or greater than\nthis value will be\
    \ counted (0 by default). Only\napplies to pileup-based statistics."
  type: long?
  inputBinding:
    prefix: --min-baseq
- id: in_no_dup
  doc: Don't count reads flagged as duplicate.
  type: boolean?
  inputBinding:
    prefix: --no-dup
- id: in_no_del
  doc: "Don't count reads aligned with a deletion at the given\nposition. Only applies\
    \ to pileup-based statistics."
  type: boolean?
  inputBinding:
    prefix: --no-del
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Path to output file. If not provided, write to stdout.
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- pysamstats
