class: CommandLineTool
id: ../../../ProteomicsLFQ.cwl
inputs:
- id: in
  doc: "*                                           Input files (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: ids
  doc: "*                                          Identifications filtered at PSM\
    \ level (e.g., q-value < 0.01).And annotated with PEP as main score. We suggest\
    \ using: 1. PercolatorAdapter tool (score_type = 'q-value', -post-processing-tdc)\
    \ 2. FalseDiscoveryRate (FDR:PSM = 0.01) 3. IDScoreSwitcher (-old_score q-value\
    \ -new_score MS:1001493 -new_score_orientation lower_better -new_score_type) To\
    \ obtain well calibrated PEPs and an inital reduction of PSMs ID files must be\
    \ provided in same order as spectra files. (valid formats: 'idXML', 'mzId')"
  type: File
  inputBinding:
    prefix: -ids
- id: design
  doc: "Design file (valid formats: 'tsv')"
  type: File
  inputBinding:
    prefix: -design
- id: fast_a
  doc: "Fasta file (valid formats: 'fasta')"
  type: File
  inputBinding:
    prefix: -fasta
- id: out
  doc: "*                                               Output mzTab file (valid formats:\
    \ 'mzTab')"
  type: File
  inputBinding:
    prefix: -out
- id: out_ms_stats
  doc: "Output MSstats input file (valid formats: 'csv')"
  type: File
  inputBinding:
    prefix: -out_msstats
- id: out_c_xml
  doc: "Output consensusXML file (valid formats: 'consensusXML')"
  type: File
  inputBinding:
    prefix: -out_cxml
- id: protein_fdr
  doc: "Protein FDR threshold (0.05=5%). (default: '0.05' min: '0.0' max: '1.0')"
  type: string
  inputBinding:
    prefix: -proteinFDR
- id: psm_fdr
  doc: "PSM FDR threshold (e.g. 0.05=5%). If Bayesian inference was chosen, it is\
    \ equivalent with a peptide FDR (default: '1.0' min: '0.0' max: '1.0')"
  type: string
  inputBinding:
    prefix: -psmFDR
- id: ini
  doc: Use the given TOPP INI file
  type: File
  inputBinding:
    prefix: -ini
- id: threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: string
  inputBinding:
    prefix: -threads
- id: write_ini
  doc: Writes the default configuration file
  type: File
  inputBinding:
    prefix: -write_ini
- id: helphelp
  doc: Shows all options (including advanced)
  type: boolean
  inputBinding:
    prefix: --helphelp
outputs: []
cwlVersion: v1.1
baseCommand:
- ProteomicsLFQ
