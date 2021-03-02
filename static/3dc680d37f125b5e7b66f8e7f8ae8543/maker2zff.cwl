class: CommandLineTool
id: maker2zff.cwl
inputs:
- id: in_fraction_confirmed_est
  doc: The fraction of splice sites confirmed by an EST alignment, default 0.5
  type: double?
  inputBinding:
    prefix: -c
- id: in_fraction_an_est
  doc: The fraction of exons that overlap an EST alignment, default 0.5
  type: double?
  inputBinding:
    prefix: -e
- id: in_fraction_exons_any
  doc: The fraction of exons that overlap any evidence (EST or Protein), default 0.5
  type: double?
  inputBinding:
    prefix: -o
- id: in_fraction_confirmed_abinitio
  doc: The fraction of splice sites confirmed by an ab-initio prediction, default
    0
  type: long?
  inputBinding:
    prefix: -a
- id: in_fraction_an_abinitio
  doc: The fraction of exons that overlap an ab-initio prediction, default 0
  type: long?
  inputBinding:
    prefix: -t
- id: in_min_length_protein
  doc: The min length of the protein sequence produced by the mRNA
  type: long?
  inputBinding:
    prefix: -l
- id: in_max_aed_allow
  doc: Max AED to allow 0.5 is default
  type: long?
  inputBinding:
    prefix: -x
- id: in_no_filtering_accept
  doc: No filtering.  Accept all.
  type: boolean?
  inputBinding:
    prefix: -n
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- maker2zff
