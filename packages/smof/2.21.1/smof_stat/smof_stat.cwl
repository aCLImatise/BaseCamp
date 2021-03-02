class: CommandLineTool
id: smof_stat.cwl
inputs:
- id: in_delimiter
  doc: output delimiter
  type: string?
  inputBinding:
    prefix: --delimiter
- id: in_by_seq
  doc: write a line for each sequence
  type: boolean?
  inputBinding:
    prefix: --byseq
- id: in_case_sensitive
  doc: match case
  type: boolean?
  inputBinding:
    prefix: --case-sensitive
- id: in_count_lower
  doc: count the number of lowercase characters
  type: boolean?
  inputBinding:
    prefix: --count-lower
- id: in_counts
  doc: write counts of all characters
  type: boolean?
  inputBinding:
    prefix: --counts
- id: in_type
  doc: guess sequence type
  type: boolean?
  inputBinding:
    prefix: --type
- id: in_length
  doc: write sequence length
  type: boolean?
  inputBinding:
    prefix: --length
- id: in_proportion
  doc: write proportion of each character
  type: boolean?
  inputBinding:
    prefix: --proportion
- id: in_aa_profile
  doc: display protein profile
  type: boolean?
  inputBinding:
    prefix: --aa-profile
- id: in_hist
  doc: write ascii histogram of sequence lengths
  type: boolean?
  inputBinding:
    prefix: --hist
- id: in_log_hist
  doc: write ascii histogram of sequence log2 lengths
  type: boolean?
  inputBinding:
    prefix: --log-hist
- id: in_input
  doc: input fasta sequence (default = stdin)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/smof:2.21.1--py_0
cwlVersion: v1.1
baseCommand:
- smof
- stat
