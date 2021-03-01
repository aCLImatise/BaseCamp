class: CommandLineTool
id: flye_samtools_markdup.cwl
inputs:
- id: in_remove_duplicate_reads
  doc: Remove duplicate reads
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_max_read_bases
  doc: Max read length (default 300 bases)
  type: long?
  inputBinding:
    prefix: -l
- id: in_mark_supplemenary_alignments
  doc: Mark supplemenary alignments of duplicates as duplicates (slower).
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_report_stats
  doc: Report stats.
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_write_temporary_files
  doc: Write temporary files to PREFIX.samtools.nnnn.nnnn.tmp.
  type: string?
  inputBinding:
    prefix: -T
- id: in_mark_primary_duplicates
  doc: Mark primary duplicates with the name of the original in a 'do' tag. Mainly
    for information and debugging.
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_input_fmt_option
  doc: "[=VAL]\nSpecify a single input file format option in the form\nof OPTION or\
    \ OPTION=VALUE"
  type: File?
  inputBinding:
    prefix: --input-fmt-option
- id: in_output_fmt
  doc: "[,OPT[=VAL]]...\nSpecify output format (SAM, BAM, CRAM)"
  type: string?
  inputBinding:
    prefix: --output-fmt
- id: in_output_fmt_option
  doc: "[=VAL]\nSpecify a single output file format option in the form\nof OPTION\
    \ or OPTION=VALUE"
  type: File?
  inputBinding:
    prefix: --output-fmt-option
- id: in_reference
  doc: Reference sequence FASTA FILE [null]
  type: File?
  inputBinding:
    prefix: --reference
- id: in_threads
  doc: Number of additional threads to use [0]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_mark_dup
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_input_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_output_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_fmt_option
  doc: "[=VAL]\nSpecify a single output file format option in the form\nof OPTION\
    \ or OPTION=VALUE"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_fmt_option)
hints: []
cwlVersion: v1.1
baseCommand:
- flye-samtools
- markdup
