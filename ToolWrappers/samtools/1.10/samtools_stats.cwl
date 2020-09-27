class: CommandLineTool
id: samtools_stats.cwl
inputs:
- id: in_coverage
  doc: ',<int>,<int>    Coverage distribution min,max,step [1,1000,1]'
  type: long
  inputBinding:
    prefix: --coverage
- id: in_remove_dups
  doc: Exclude from statistics reads marked as duplicates
  type: boolean
  inputBinding:
    prefix: --remove-dups
- id: in_customized_index_file
  doc: Use a customized index file
  type: boolean
  inputBinding:
    prefix: --customized-index-file
- id: in_required_flag
  doc: <str|int>      Required flag, 0 for unset. See also `samtools flags` [0]
  type: boolean
  inputBinding:
    prefix: --required-flag
- id: in_filtering_flag
  doc: Filtering flag, 0 for unset. See also `samtools flags` [0]
  type: long
  inputBinding:
    prefix: --filtering-flag
- id: in_gc_depth
  doc: the size of GC-depth bins (decreasing bin size increases memory requirement)
    [2e4]
  type: double
  inputBinding:
    prefix: --GC-depth
- id: in_insert_size
  doc: Maximum insert size [8000]
  type: long
  inputBinding:
    prefix: --insert-size
- id: in_id
  doc: Include only listed read group or sample name
  type: string
  inputBinding:
    prefix: --id
- id: in_read_length
  doc: Include in the statistics only reads with the given read length [-1]
  type: long
  inputBinding:
    prefix: --read-length
- id: in_most_inserts
  doc: Report only the main part of inserts [0.99]
  type: double
  inputBinding:
    prefix: --most-inserts
- id: in_split_prefix
  doc: Path or string prefix for filepaths output by -S (default is input filename)
  type: File
  inputBinding:
    prefix: --split-prefix
- id: in_trim_quality
  doc: The BWA trimming parameter [0]
  type: long
  inputBinding:
    prefix: --trim-quality
- id: in_ref_seq
  doc: Reference sequence (required for GC-depth and mismatches-per-cycle calculation).
  type: File
  inputBinding:
    prefix: --ref-seq
- id: in_sam
  doc: Ignored (input format is auto-detected).
  type: boolean
  inputBinding:
    prefix: --sam
- id: in_split
  doc: Also write statistics to separate files split by tagged field.
  type: string
  inputBinding:
    prefix: --split
- id: in_target_regions
  doc: Do stats in these regions only. Tab-delimited file chr,from,to, 1-based, inclusive.
  type: File
  inputBinding:
    prefix: --target-regions
- id: in_sparse
  doc: Suppress outputting IS rows where there are no insertions.
  type: boolean
  inputBinding:
    prefix: --sparse
- id: in_remove_overlaps
  doc: Remove overlaps of paired-end reads from coverage and base count computations.
  type: boolean
  inputBinding:
    prefix: --remove-overlaps
- id: in_cov_threshold
  doc: Only bases with coverage above this value will be included in the target percentage
    computation [0]
  type: long
  inputBinding:
    prefix: --cov-threshold
- id: in_input_fmt_option
  doc: "[=VAL]\nSpecify a single input file format option in the form\nof OPTION or\
    \ OPTION=VALUE"
  type: File
  inputBinding:
    prefix: --input-fmt-option
- id: in_reference
  doc: Reference sequence FASTA FILE [null]
  type: File
  inputBinding:
    prefix: --reference
- id: in_threads
  doc: Number of additional threads to use [0]
  type: long
  inputBinding:
    prefix: --threads
- id: in_verbosity
  doc: "Set level of verbosity\n"
  type: long
  inputBinding:
    prefix: --verbosity
- id: in_file_dot_bam
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- samtools
- stats
