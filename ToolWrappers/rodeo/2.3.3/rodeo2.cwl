class: CommandLineTool
id: rodeo2.cwl
inputs:
- id: in_output_dir
  doc: Name of output folder
  type: Directory?
  inputBinding:
    prefix: --output_dir
- id: in_c
  doc: "[CONF_FILE [CONF_FILE ...]], --conf_file [CONF_FILE [CONF_FILE ...]]\nMaximum\
    \ size of potential ORF"
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_hmm
  doc: "[CUSTOM_HMM [CUSTOM_HMM ...]], --custom_hmm [CUSTOM_HMM [CUSTOM_HMM ...]]\n\
    Maximum size of potential ORF"
  type: boolean?
  inputBinding:
    prefix: -hmm
- id: in_num_cores
  doc: Number of cores to use.
  type: long?
  inputBinding:
    prefix: --num_cores
- id: in_precursor_max
  doc: Maximum size of potential ORF
  type: long?
  inputBinding:
    prefix: --precursor_max
- id: in_precursor_min
  doc: Minimum size of potential ORF
  type: long?
  inputBinding:
    prefix: --precursor_min
- id: in_overlap
  doc: Maximum overlap of search with existing CDSs
  type: string?
  inputBinding:
    prefix: --overlap
- id: in_fetch_type
  doc: "Type of window specification. 'cds' will make the\nwindow +/- n CDSs from\
    \ the query. 'nucs' will make the\nwindow +/- n nucleotides from the query"
  type: string?
  inputBinding:
    prefix: --fetch_type
- id: in_fetch_n
  doc: The 'n' variable for the -ft=orfs,cds
  type: string?
  inputBinding:
    prefix: --fetch_n
- id: in_fetch_distance
  doc: Number of nucleotides to fetch outside of window
  type: long?
  inputBinding:
    prefix: --fetch_distance
- id: in_pt
  doc: "[PEPTIDE_TYPES [PEPTIDE_TYPES ...]], --peptide_types [PEPTIDE_TYPES [PEPTIDE_TYPES\
    \ ...]]\nType(s) of peptides to score."
  type: boolean?
  inputBinding:
    prefix: -pt
- id: in_evaluate_all
  doc: "Evaluate all duplicates if accession id corresponds to\nduplicate entries"
  type: boolean?
  inputBinding:
    prefix: --evaluate_all
- id: in_exhaustive
  doc: Score RiPPs even if they don't have a valid split site
  type: boolean?
  inputBinding:
    prefix: --exhaustive
- id: in_print_precursors
  doc: Print precursors in HTML file
  type: boolean?
  inputBinding:
    prefix: --print_precursors
- id: in_web
  doc: Only to use when running as a web tool
  type: boolean?
  inputBinding:
    prefix: --web
- id: in_main
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_rodeo
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_app_dot
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_conf_file
  doc: ''
  type: string?
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Name of output folder
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rodeo:2.3.3--0
cwlVersion: v1.1
baseCommand:
- rodeo2
