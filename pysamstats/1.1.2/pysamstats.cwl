class: CommandLineTool
id: pysamstats.cwl
inputs:
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: type
  doc: 'Type of statistics to print, one of: alignment_binned, baseq, baseq_ext, baseq_ext_strand,
    baseq_strand, coverage, coverage_binned, coverage_ext, coverage_ext_binned, coverage_ext_strand,
    coverage_gc, coverage_strand, mapq, mapq_binned, mapq_strand, tlen, tlen_binned,
    tlen_strand, variation, variation_strand.'
  type: string
  inputBinding:
    prefix: --type
- id: chromosome
  doc: Chromosome name.
  type: string
  inputBinding:
    prefix: --chromosome
- id: start
  doc: Start position (1-based).
  type: string
  inputBinding:
    prefix: --start
- id: end
  doc: End position (1-based).
  type: string
  inputBinding:
    prefix: --end
- id: zero_based
  doc: Use zero-based coordinates (default is false, i.e., use one-based coords).
  type: boolean
  inputBinding:
    prefix: --zero-based
- id: truncate
  doc: Truncate pileup-based stats so no records are emitted outside the specified
    range.
  type: boolean
  inputBinding:
    prefix: --truncate
- id: stepper
  doc: 'Stepper to provide to underlying pysam call. Options are:"all" (default):
    all reads are returned, except where flags BAM_FUNMAP, BAM_FSECONDARY, BAM_FQCFAIL,
    BAM_FDUP set; "nofilter" applies no filter to returned reads; "samtools": filter
    & read processing as in _csamtools_ pileup. This requires a fasta file. For complete
    details see the pysam documentation.'
  type: string
  inputBinding:
    prefix: --stepper
- id: pad
  doc: Pad pileup-based stats so a record is emitted for every position (default is
    only covered positions).
  type: boolean
  inputBinding:
    prefix: --pad
- id: max_depth
  doc: Maximum read depth permitted in pileup-based statistics. The default limit
    is 8000.
  type: long
  inputBinding:
    prefix: --max-depth
- id: fast_a
  doc: Reference sequence file, only required for some statistics.
  type: string
  inputBinding:
    prefix: --fasta
- id: omit_header
  doc: Omit header row from output.
  type: boolean
  inputBinding:
    prefix: --omit-header
- id: progress
  doc: Report progress every N rows.
  type: string
  inputBinding:
    prefix: --progress
- id: window_size
  doc: Size of window for binned statistics (default is 300).
  type: string
  inputBinding:
    prefix: --window-size
- id: window_offset
  doc: Window offset to use for deciding which genome position to report binned statistics
    against. The default is 150, i.e., the middle of 300bp window.
  type: string
  inputBinding:
    prefix: --window-offset
- id: format
  doc: Output format, one of {tsv, csv, hdf5} (defaults to tsv). N.B., hdf5 requires
    PyTables to be installed.
  type: string
  inputBinding:
    prefix: --format
- id: output
  doc: Path to output file. If not provided, write to stdout.
  type: string
  inputBinding:
    prefix: --output
- id: fields
  doc: Comma-separated list of fields to output (defaults to all fields).
  type: string
  inputBinding:
    prefix: --fields
- id: hdf5_group
  doc: Name of HDF5 group to write to (defaults to the root group).
  type: string
  inputBinding:
    prefix: --hdf5-group
- id: hdf5_dataset
  doc: Name of HDF5 dataset to create (defaults to "data").
  type: string
  inputBinding:
    prefix: --hdf5-dataset
- id: hdf5_comp_lib
  doc: HDF5 compression library (defaults to zlib).
  type: string
  inputBinding:
    prefix: --hdf5-complib
- id: hdf5_comp_level
  doc: HDF5 compression level (defaults to 5).
  type: string
  inputBinding:
    prefix: --hdf5-complevel
- id: hdf5_chunksize
  doc: Size of chunks in number of bytes (defaults to 2**20).
  type: string
  inputBinding:
    prefix: --hdf5-chunksize
- id: min_mapq
  doc: Only reads with mapping quality equal to or greater than this value will be
    counted (0 by default).
  type: long
  inputBinding:
    prefix: --min-mapq
- id: min_base_q
  doc: Only reads with base quality equal to or greater than this value will be counted
    (0 by default). Only applies to pileup-based statistics.
  type: long
  inputBinding:
    prefix: --min-baseq
- id: no_dup
  doc: Don't count reads flagged as duplicate.
  type: boolean
  inputBinding:
    prefix: --no-dup
- id: no_del
  doc: Don't count reads aligned with a deletion at the given position. Only applies
    to pileup-based statistics.
  type: boolean
  inputBinding:
    prefix: --no-del
outputs: []
cwlVersion: v1.1
baseCommand:
- pysamstats
