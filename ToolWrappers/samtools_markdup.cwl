class: CommandLineTool
id: samtools_markdup.cwl
inputs:
- id: in_remove_duplicate_reads
  doc: Remove duplicate reads
  type: boolean
  inputBinding:
    prefix: -r
- id: in_max_read_default
  doc: Max read length (default 300 bases)
  type: long
  inputBinding:
    prefix: -l
- id: in_mark_supplementary_alignments
  doc: Mark supplementary alignments of duplicates as duplicates (slower).
  type: boolean
  inputBinding:
    prefix: -S
- id: in_report_stats
  doc: Report stats.
  type: boolean
  inputBinding:
    prefix: -s
- id: in_write_stats_named
  doc: Write stats to named file.  Implies -s.
  type: File
  inputBinding:
    prefix: -f
- id: in_write_temporary_files
  doc: Write temporary files to PREFIX.samtools.nnnn.nnnn.tmp.
  type: string
  inputBinding:
    prefix: -T
- id: in_optical_distance_set
  doc: Optical distance (if set, marks with dt tag)
  type: long
  inputBinding:
    prefix: -d
- id: in_clear_previous_duplicate
  doc: Clear previous duplicate settings and tags.
  type: boolean
  inputBinding:
    prefix: -c
- id: in_mode
  doc: "Duplicate decision method for paired reads.\nTYPE = t measure positions based\
    \ on template start/end (default).\ns measure positions based on sequence start."
  type: string
  inputBinding:
    prefix: --mode
- id: in_include_fails
  doc: Include quality check failed reads.
  type: boolean
  inputBinding:
    prefix: --include-fails
- id: in_no_pg
  doc: Do not add a PG line
  type: boolean
  inputBinding:
    prefix: --no-PG
- id: in_mark_primary_duplicates
  doc: Mark primary duplicates with the name of the original in a 'do' tag. Mainly
    for information and debugging.
  type: boolean
  inputBinding:
    prefix: -t
- id: in_input_fmt_option
  doc: "[=VAL]\nSpecify a single input file format option in the form\nof OPTION or\
    \ OPTION=VALUE"
  type: File
  inputBinding:
    prefix: --input-fmt-option
- id: in_output_fmt
  doc: "[,OPT[=VAL]]...\nSpecify output format (SAM, BAM, CRAM)"
  type: string
  inputBinding:
    prefix: --output-fmt
- id: in_output_fmt_option
  doc: "[=VAL]\nSpecify a single output file format option in the form\nof OPTION\
    \ or OPTION=VALUE"
  type: File
  inputBinding:
    prefix: --output-fmt-option
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
- id: in_write_index
  doc: Automatically index the output files [off]
  type: boolean
  inputBinding:
    prefix: --write-index
- id: in_verbosity
  doc: Set level of verbosity
  type: long
  inputBinding:
    prefix: --verbosity
- id: in_input_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_fmt_option
  doc: "[=VAL]\nSpecify a single output file format option in the form\nof OPTION\
    \ or OPTION=VALUE"
  type: File
  outputBinding:
    glob: $(inputs.in_output_fmt_option)
cwlVersion: v1.1
baseCommand:
- samtools
- markdup
