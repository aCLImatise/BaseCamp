class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ProphetModels.pl.cwl
inputs:
- id: _specify_pepxml
  doc: -- Specify pepXML file to be processed.
  type: File
  inputBinding:
    prefix: -i
- id: _specify_counted
  doc: -- Specify protein prefix indicating decoy to be counted.
  type: string
  inputBinding:
    prefix: -d
- id: _specify_excluded
  doc: -- Specify protein prefix indicating decoy to be excluded.
  type: string
  inputBinding:
    prefix: -x
- id: _specify_decoy
  doc: -- Specify decoy ratio. Will guess from P<0.001 hits if not specified.
  type: string
  inputBinding:
    prefix: -r
- id: _specify_window
  doc: -- Specify window for Prob/Prob plot. Default 100
  type: string
  inputBinding:
    prefix: -w
- id: _delete_files
  doc: -- Don't delete intermediate files.
  type: boolean
  inputBinding:
    prefix: -k
- id: _make_probprob
  doc: -- Make Prob/Prob and Corr/Corr plots.
  type: boolean
  inputBinding:
    prefix: -M
- id: unique_sequences_iprophet
  doc: -- Consider only top probabilities of unique peptide sequences for iProphet.
  type: boolean
  inputBinding:
    prefix: -u
- id: unique_sequences_peptideprophet
  doc: -- Consider only top probabilities of unique peptide sequences for PeptideProphet.
  type: boolean
  inputBinding:
    prefix: -q
- id: unique_peptide_ions
  doc: -- Consider only top probabilities of unique peptide ions for PeptideProphet.
  type: boolean
  inputBinding:
    prefix: -n
- id: _consider_probabilities
  doc: -- Consider only top probabilities for each PSMs
  type: boolean
  inputBinding:
    prefix: -T
- id: _provide_protein
  doc: -- Provide simplistic protein ROC plot. Only uniquely-mapped proteins counted
    with prob = max prob of mapping peptides.
  type: boolean
  inputBinding:
    prefix: -P
- id: _generate_plots
  doc: -- Generate plots using Gnuplot, as opposed to inserting analysis data into
    source pepXML file.
  type: boolean
  inputBinding:
    prefix: -G
outputs: []
cwlVersion: v1.1
baseCommand:
- ProphetModels.pl
