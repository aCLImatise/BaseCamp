class: CommandLineTool
id: alignstats.cwl
inputs:
- id: in_print_verbose_output
  doc: Print verbose runtime information output to stderr.
  type: boolean
  inputBinding:
    prefix: -v
- id: in_maximum_number_keep
  doc: Maximum number of records to keep in memory.
  type: long
  inputBinding:
    prefix: -n
- id: in_use_separate_threads
  doc: "Use separate threads for reading and processing records\n(requires builtin\
    \ pthread support)."
  type: boolean
  inputBinding:
    prefix: -p
- id: in_number_htslib_decompression
  doc: Number of HTSlib decompression threads to spawn.
  type: long
  inputBinding:
    prefix: -P
- id: in_read_input_input
  doc: "Read INPUT as the input SAM, BAM, or CRAM file (stdin). Input\nmust be coordinate-sorted\
    \ for accurate results."
  type: File
  inputBinding:
    prefix: -i
- id: in_specify_file_format
  doc: "Specify file format of input alignment file (\"sam\", \"bam\", or\n\"cram\"\
    \ available, default guessed from filename or \"sam\")."
  type: File
  inputBinding:
    prefix: -j
- id: in_write_report_stdout
  doc: Write report to OUTPUT (stdout).
  type: string
  inputBinding:
    prefix: -o
- id: in_file_bed_format_listing_process
  doc: "File in BED format listing which regions to process. By\ndefault, all available\
    \ records are processed. This option\nrequires the alignment file to be indexed."
  type: File
  inputBinding:
    prefix: -r
- id: in_file_bed_format_listing_capture
  doc: "File in BED format listing capture coverage regions. Required\nif capture\
    \ coverage statistics are enabled."
  type: File
  inputBinding:
    prefix: -t
- id: in_file_listing_regions
  doc: "File in BED format listing regions of N bases in reference.\nCoverage counts\
    \ will be suppressed for these regions."
  type: File
  inputBinding:
    prefix: -m
- id: in_indexed_fasta_reference
  doc: Indexed FASTA reference file for CRAM input alignment.
  type: File
  inputBinding:
    prefix: -T
- id: in_only_process_records_minimum
  doc: Only process records with minimum mapping quality of INT.
  type: long
  inputBinding:
    prefix: -q
- id: in_only_process_records_set
  doc: Only process records with all bits in INT set in FLAG.
  type: long
  inputBinding:
    prefix: -f
- id: in_only_process_records_none
  doc: Only process records with none of bits in INT set in FLAG.
  type: long
  inputBinding:
    prefix: -F
- id: in_filter_bases_base
  doc: Filter bases with base quality below INT from coverage
  type: long
  inputBinding:
    prefix: -b
- id: in_disable_excluding_duplicate
  doc: Disable excluding duplicate reads from coverage statistics.
  type: boolean
  inputBinding:
    prefix: -D
- id: in_bydetermining_overlapping_bases
  doc: "Enable excluding overlapping bases in paired-end reads by\ndetermining overlapping\
    \ bases from MC tag."
  type: boolean
  inputBinding:
    prefix: -M
- id: in_enable_excluding_fromfirst
  doc: "Enable excluding overlapping bases in paired-end reads from\nfirst read in\
    \ coordinate-sorted order from coverage statistics."
  type: boolean
  inputBinding:
    prefix: -O
- id: in_disable_processing_unplaced
  doc: "Disable processing unplaced unmapped reads (CHROM \"*\") when\nusing the -r\
    \ option."
  type: boolean
  inputBinding:
    prefix: -U
- id: in_disable_reporting_alignment
  doc: Disable reporting alignment statistics.
  type: boolean
  inputBinding:
    prefix: -A
- id: in_disable_reporting_capture
  doc: Disable reporting capture coverage statistics.
  type: boolean
  inputBinding:
    prefix: -C
- id: in_disable_reporting_statistics
  doc: Disable reporting whole genome coverage statistics.
  type: boolean
  inputBinding:
    prefix: -W
- id: in_statistics_dot
  doc: 'Reporting options:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- alignstats
