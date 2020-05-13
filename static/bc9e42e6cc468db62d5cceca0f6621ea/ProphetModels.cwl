class: CommandLineTool
id: ProphetModels.pl.cwl
inputs:
- id: specify
  doc: file to be processed.
  type: File
  inputBinding:
    prefix: -- Specify
- id: specify
  doc: prefix indicating decoy to be counted.
  type: string
  inputBinding:
    prefix: -- Specify
- id: specify
  doc: prefix indicating decoy to be excluded.
  type: string
  inputBinding:
    prefix: -- Specify
- id: specify
  doc: ratio. Will guess from P<0.001 hits if not specified.
  type: string
  inputBinding:
    prefix: -- Specify
- id: specify
  doc: for Prob/Prob plot. Default 100
  type: string
  inputBinding:
    prefix: -- Specify
- id: k
  doc: -- Don't delete intermediate files.
  type: boolean
  inputBinding:
    prefix: -k
- id: m
  doc: -- Make Prob/Prob and Corr/Corr plots.
  type: boolean
  inputBinding:
    prefix: -M
- id: u
  doc: -- Consider only top probabilities of unique peptide sequences for iProphet.
  type: boolean
  inputBinding:
    prefix: -u
- id: q
  doc: -- Consider only top probabilities of unique peptide sequences for PeptideProphet.
  type: boolean
  inputBinding:
    prefix: -q
- id: n
  doc: -- Consider only top probabilities of unique peptide ions for PeptideProphet.
  type: boolean
  inputBinding:
    prefix: -n
- id: t
  doc: -- Consider only top probabilities for each PSMs
  type: boolean
  inputBinding:
    prefix: -T
- id: p
  doc: -- Provide simplistic protein ROC plot. Only uniquely-mapped proteins counted
    with prob = max prob of mapping peptides.
  type: boolean
  inputBinding:
    prefix: -P
- id: g
  doc: -- Generate plots using Gnuplot, as opposed to inserting analysis data into
    source pepXML file.
  type: boolean
  inputBinding:
    prefix: -G
outputs: []
cwlVersion: v1.1
baseCommand:
- ProphetModels.pl
