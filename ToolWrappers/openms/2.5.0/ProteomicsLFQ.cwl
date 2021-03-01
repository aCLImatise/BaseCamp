class: CommandLineTool
id: ProteomicsLFQ.cwl
inputs:
- id: in_in
  doc: "*                                           Input files (valid formats: 'mzML')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_ids
  doc: "*                                          Identifications filtered at PSM\
    \ level (e.g., q-value < 0.01).And annotated with PEP as main score.\nWe suggest\
    \ using:\n1. PercolatorAdapter tool (score_type = 'q-value', -post-processing-tdc)\n\
    2. FalseDiscoveryRate (FDR:PSM = 0.01)\n3. IDScoreSwitcher (-old_score q-value\
    \ -new_score MS:1001493 -new_score_orientation lower_better -new_score_type)\n\
    To obtain well calibrated PEPs and an inital reduction of PSMs\nID files must\
    \ be provided in same order as spectra files. (valid formats: 'idXML', 'mzId')"
  type: File?
  inputBinding:
    prefix: -ids
- id: in_design
  doc: "Design file (valid formats: 'tsv')"
  type: File?
  inputBinding:
    prefix: -design
- id: in_fast_a
  doc: "Fasta file (valid formats: 'fasta')"
  type: File?
  inputBinding:
    prefix: -fasta
- id: in_out
  doc: "*                                               Output mzTab file (valid formats:\
    \ 'mzTab')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_out_ms_stats
  doc: "Output MSstats input file (valid formats: 'csv')"
  type: File?
  inputBinding:
    prefix: -out_msstats
- id: in_out_c_xml
  doc: "Output consensusXML file (valid formats: 'consensusXML')"
  type: File?
  inputBinding:
    prefix: -out_cxml
- id: in_protein_fdr
  doc: "Protein FDR threshold (0.05=5%). (default: '0.05' min: '0.0' max: '1.0')"
  type: long?
  inputBinding:
    prefix: -proteinFDR
- id: in_psm_fdr
  doc: "PSM FDR threshold (e.g. 0.05=5%). If Bayesian inference was chosen, it is\
    \ equivalent with a peptide FDR (default: '1.0' min: '0.0' max: '1.0')"
  type: long?
  inputBinding:
    prefix: -psmFDR
- id: in_ini
  doc: Use the given TOPP INI file
  type: File?
  inputBinding:
    prefix: -ini
- id: in_threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: long?
  inputBinding:
    prefix: -threads
- id: in_write_ini
  doc: Writes the default configuration file
  type: File?
  inputBinding:
    prefix: -write_ini
- id: in_helphelp
  doc: Shows all options (including advanced)
  type: boolean?
  inputBinding:
    prefix: --helphelp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "*                                               Output mzTab file (valid formats:\
    \ 'mzTab')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
- id: out_out_c_xml
  doc: "Output consensusXML file (valid formats: 'consensusXML')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_c_xml)
hints: []
cwlVersion: v1.1
baseCommand:
- ProteomicsLFQ
