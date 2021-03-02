class: CommandLineTool
id: ProteomicsLFQ.cwl
inputs:
- id: in_in
  doc: "*                                         Input files (valid formats: 'mzML')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_ids
  doc: "*                                        Identifications filtered at PSM level\
    \ (e.g., q-value < 0.01).And annotated with PEP as main score.\nWe suggest using:\n\
    1. PeptideIndexer to annotate target and decoy information.\n2. PSMFeatureExtractor\
    \ to annotate percolator features.\n3. PercolatorAdapter tool (score_type = 'q-value',\
    \ -post-processing-tdc)\n4. IDFilter (pep:score = 0.01)\nTo obtain well calibrated\
    \ PEPs and an inital reduction of PSMs\nID files must be provided in same order\
    \ as spectra files. (valid formats: 'idXML', 'mzId')"
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
  doc: "*                                             Output mzTab file (valid formats:\
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
- id: in_quantification_method
  doc: "Feature_intensity: MS1 signal.\nspectral_counting: PSM counts. (default: 'feature_intensity'\
    \ valid: 'feature_intensity', 'spectral_counting')"
  type: long?
  inputBinding:
    prefix: -quantification_method
- id: in_targeted_only
  doc: "True: Only ID based quantification.\nfalse: include unidentified features\
    \ so they can be linked to identified ones (=match between runs). (default: 'false'\
    \ valid: 'true', 'false')"
  type: string?
  inputBinding:
    prefix: -targeted_only
- id: in_transfer_ids
  doc: "Requantification using mean of aligned RTs of a peptide feature.\nOnly applies\
    \ to peptides that were quantified in more than 50% of all runs (of a fraction).\
    \ (default: 'false' valid: 'false', 'mean')"
  type: long?
  inputBinding:
    prefix: -transfer_ids
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
  doc: "*                                             Output mzTab file (valid formats:\
    \ 'mzTab')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
- id: out_out_c_xml
  doc: "Output consensusXML file (valid formats: 'consensusXML')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_c_xml)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/openms:2.6.0--h4afb90d_0
cwlVersion: v1.1
baseCommand:
- ProteomicsLFQ
