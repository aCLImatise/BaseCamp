class: CommandLineTool
id: pynast.cwl
inputs:
- id: template_fp
  doc: path to template alignment file [REQUIRED]
  type: string
  inputBinding:
    prefix: --template_fp
- id: input_fp
  doc: path to input fasta file [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_fp
- id: verbose
  doc: 'Print status and other information during execution [default: False]'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: min_pct_id
  doc: 'minimum percent sequence  identity to consider a sequence a match [default:
    75.0]'
  type: long
  inputBinding:
    prefix: --min_pct_id
- id: min_len
  doc: 'minimum sequence length to include in NAST alignment [default: 1000]'
  type: long
  inputBinding:
    prefix: --min_len
- id: pairwise_alignment_method
  doc: 'method for performing pairwise alignment [default: uclust]'
  type: string
  inputBinding:
    prefix: --pairwise_alignment_method
- id: fast_a_out_fp
  doc: 'path to store resulting alignment file [default: derived from input filepath]'
  type: string
  inputBinding:
    prefix: --fasta_out_fp
- id: log_fp
  doc: 'path to store log file [default: derived from input filepath]'
  type: string
  inputBinding:
    prefix: --log_fp
- id: failure_fp
  doc: 'path to store file of seqs which fail to align [default: derived from input
    filepath]'
  type: string
  inputBinding:
    prefix: --failure_fp
- id: temp_dir
  doc: 'path to store any temp files that are created [default: /tmp]'
  type: string
  inputBinding:
    prefix: --temp_dir
- id: max_e_value
  doc: Deprecated. Will be removed in PyNAST 1.3
  type: long
  inputBinding:
    prefix: --max_e_value
- id: blast_db
  doc: Deprecated. Will be removed in PyNAST 1.3
  type: string
  inputBinding:
    prefix: --blast_db
outputs: []
cwlVersion: v1.1
baseCommand:
- pynast
