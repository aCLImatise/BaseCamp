class: CommandLineTool
id: genseq.cwl
inputs:
- id: in_n_seq
  doc: number of sequences to generate
  type: long
  inputBinding:
    prefix: -Nseq
- id: in_alphabet_for_sequences
  doc: alphabet for sequences
  type: long
  inputBinding:
    prefix: -a
- id: in_track_prior
  doc: Dirichlet mixture OR
  type: boolean
  inputBinding:
    prefix: -trackprior
- id: in_gen_prot_prior
  doc: Protein mixture ((null)) OR
  type: boolean
  inputBinding:
    prefix: -genprotprior
- id: in_gene_hl_two_prior
  doc: EHL2 mixture ((null)) OR
  type: boolean
  inputBinding:
    prefix: -genehl2prior
- id: in_mean_log_len
  doc: Ave(log length) (  5.415100)
  type: boolean
  inputBinding:
    prefix: -meanloglen
- id: in_sd_log_len
  doc: Std Dev (log length) (  1.036326)
  type: boolean
  inputBinding:
    prefix: -sdloglen
- id: in_option
  doc: ''
  type: string
  inputBinding:
    prefix: -option
- id: in_run_name
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- genseq
