class: CommandLineTool
id: SeqFilters.cwl
inputs:
- id: in_forward_primers
  doc: Comma seperated list of forward primers
  type: string?
  inputBinding:
    prefix: --forward-primers
- id: in_max_forward
  doc: Maximum forward edit distance (default=2)
  type: long?
  inputBinding:
    prefix: --max-forward
- id: in_gene_name
  doc: "Gene name, possible values are RRNA16S and\nOTHER (default=RRNA16S)"
  type: long?
  inputBinding:
    prefix: --gene-name
- id: in_min_length
  doc: "Minimum sequence length after primer triming\n(default=0)"
  type: long?
  inputBinding:
    prefix: --min-length
- id: in_max_ns
  doc: "Maxmimum number of Ns allowed in a sequence\n(default=0)"
  type: long?
  inputBinding:
    prefix: --max-ns
- id: in_outdir
  doc: Output directory (default=cwd)
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_result_dir_name
  doc: Result dir name (default=result_dir)
  type: string?
  inputBinding:
    prefix: --result-dir-name
- id: in_keep_primer
  doc: Don't trim primers (default=false)
  type: string?
  inputBinding:
    prefix: --keep-primer
- id: in_min_qual
  doc: "Minimum sequence length after primer triming\n(default=20)"
  type: long?
  inputBinding:
    prefix: --min-qual
- id: in_qual_file
  doc: Quality input file (default=null)
  type: File?
  inputBinding:
    prefix: --qual-file
- id: in_reverse_primers
  doc: "Comma seperated list of reverse primers\n(default=null)"
  type: string?
  inputBinding:
    prefix: --reverse-primers
- id: in_max_reverse
  doc: Maximum reverse edit distance (default=0)
  type: long?
  inputBinding:
    prefix: --max-reverse
- id: in_seq_file
  doc: Sequence file to process
  type: File?
  inputBinding:
    prefix: --seq-file
- id: in_skip_not_ag
  doc: Don't process no tag sequences
  type: boolean?
  inputBinding:
    prefix: --skip-notag
- id: in_tag_file
  doc: tag-file (default=null, no tag sorting)
  type: File?
  inputBinding:
    prefix: --tag-file
- id: in_max_length
  doc: "Maximum sequence length after primer triming\n(default=1000)\n"
  type: long?
  inputBinding:
    prefix: --max-length
- id: in_usage
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Output directory (default=cwd)
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- SeqFilters
