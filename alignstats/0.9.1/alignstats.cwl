class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/alignstats.cwl
inputs:
- id: print_verbose_output
  doc: Print verbose runtime information output to stderr.
  type: boolean
  inputBinding:
    prefix: -v
- id: maximum_number_records
  doc: Maximum number of records to keep in memory.
  type: long
  inputBinding:
    prefix: -n
- id: use_separate_threads
  doc: Use separate threads for reading and processing records (requires builtin pthread
    support).
  type: boolean
  inputBinding:
    prefix: -p
- id: number_htslib_spawn
  doc: Number of HTSlib decompression threads to spawn.
  type: long
  inputBinding:
    prefix: -P
- id: read_input_input
  doc: Read INPUT as the input SAM, BAM, or CRAM file (stdin). Input must be coordinate-sorted
    for accurate results.
  type: string
  inputBinding:
    prefix: -i
- id: specify_file_format
  doc: Specify file format of input alignment file ("sam", "bam", or "cram" available,
    default guessed from filename or "sam").
  type: string
  inputBinding:
    prefix: -j
- id: write_report_output
  doc: Write report to OUTPUT (stdout).
  type: string
  inputBinding:
    prefix: -o
- id: file_listing_process
  doc: File in BED format listing which regions to process. By default, all available
    records are processed. This option requires the alignment file to be indexed.
  type: string
  inputBinding:
    prefix: -r
- id: file_bed_format
  doc: File in BED format listing capture coverage regions. Required if capture coverage
    statistics are enabled.
  type: string
  inputBinding:
    prefix: -t
- id: file_format_listing
  doc: File in BED format listing regions of N bases in reference. Coverage counts
    will be suppressed for these regions.
  type: string
  inputBinding:
    prefix: -m
- id: indexed_fasta_reference
  doc: Indexed FASTA reference file for CRAM input alignment.
  type: string
  inputBinding:
    prefix: -T
- id: only_process_records_minimum
  doc: Only process records with minimum mapping quality of INT.
  type: long
  inputBinding:
    prefix: -q
- id: only_process_records_bits
  doc: Only process records with all bits in INT set in FLAG.
  type: long
  inputBinding:
    prefix: -f
- id: only_process_records_none
  doc: Only process records with none of bits in INT set in FLAG.
  type: long
  inputBinding:
    prefix: -F
- id: filter_bases_base
  doc: Filter bases with base quality below INT from coverage statistics.
  type: long
  inputBinding:
    prefix: -b
- id: disable_excluding_reads
  doc: Disable excluding duplicate reads from coverage statistics.
  type: boolean
  inputBinding:
    prefix: -D
- id: by_determining_bases
  doc: Enable excluding overlapping bases in paired-end reads by determining overlapping
    bases from MC tag.
  type: boolean
  inputBinding:
    prefix: -M
- id: from_first_read
  doc: Enable excluding overlapping bases in paired-end reads from first read in coordinate-sorted
    order from coverage statistics.
  type: boolean
  inputBinding:
    prefix: -O
- id: disable_processing_unplaced
  doc: Disable processing unplaced unmapped reads (CHROM "*") when using the -r option.
  type: boolean
  inputBinding:
    prefix: -U
- id: disable_reporting_alignment
  doc: Disable reporting alignment statistics.
  type: boolean
  inputBinding:
    prefix: -A
- id: disable_reporting_capture
  doc: Disable reporting capture coverage statistics.
  type: boolean
  inputBinding:
    prefix: -C
- id: disable_reporting_statistics
  doc: Disable reporting whole genome coverage statistics.
  type: boolean
  inputBinding:
    prefix: -W
outputs: []
cwlVersion: v1.1
baseCommand:
- alignstats
