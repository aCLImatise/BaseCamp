class: CommandLineTool
id: SeqFilters.cwl
inputs:
- id: forward_primers
  doc: Comma seperated list of forward primers
  type: string
  inputBinding:
    prefix: --forward-primers
- id: max_forward
  doc: Maximum forward edit distance (default=2)
  type: string
  inputBinding:
    prefix: --max-forward
- id: gene_name
  doc: Gene name, possible values are RRNA16S and OTHER (default=RRNA16S)
  type: string
  inputBinding:
    prefix: --gene-name
- id: min_length
  doc: Minimum sequence length after primer triming (default=0)
  type: string
  inputBinding:
    prefix: --min-length
- id: max_ns
  doc: Maxmimum number of Ns allowed in a sequence (default=0)
  type: string
  inputBinding:
    prefix: --max-ns
- id: outdir
  doc: Output directory (default=cwd)
  type: string
  inputBinding:
    prefix: --outdir
- id: result_dir_name
  doc: Result dir name (default=result_dir)
  type: string
  inputBinding:
    prefix: --result-dir-name
- id: keep_primer
  doc: Don't trim primers (default=false)
  type: string
  inputBinding:
    prefix: --keep-primer
- id: min_qual
  doc: Minimum sequence length after primer triming (default=20)
  type: string
  inputBinding:
    prefix: --min-qual
- id: qual_file
  doc: Quality input file (default=null)
  type: string
  inputBinding:
    prefix: --qual-file
- id: reverse_primers
  doc: Comma seperated list of reverse primers (default=null)
  type: string
  inputBinding:
    prefix: --reverse-primers
- id: max_reverse
  doc: Maximum reverse edit distance (default=0)
  type: string
  inputBinding:
    prefix: --max-reverse
- id: seq_file
  doc: Sequence file to process
  type: string
  inputBinding:
    prefix: --seq-file
- id: skip_not_ag
  doc: Don't process no tag sequences
  type: boolean
  inputBinding:
    prefix: --skip-notag
- id: tag_file
  doc: tag-file (default=null)
  type: string
  inputBinding:
    prefix: --tag-file
- id: max_length
  doc: Maximum sequence length after primer triming (default=1000)
  type: string
  inputBinding:
    prefix: --max-length
outputs: []
cwlVersion: v1.1
baseCommand:
- SeqFilters
