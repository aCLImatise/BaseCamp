class: CommandLineTool
id: dfast_qc.cwl
inputs:
- id: in_input_fast_a
  doc: Input FASTA file (raw or gzipped) [required]
  type: File?
  inputBinding:
    prefix: --input_fasta
- id: in_out_dir
  doc: 'Output directory (default: OUT)'
  type: Directory?
  inputBinding:
    prefix: --out_dir
- id: in_taxid
  doc: "NCBI taxid for completeness check. Use '--show_taxon'\nfor available taxids.\
    \ (Default: Automatically inferred\nfrom taxonomy check)"
  type: long?
  inputBinding:
    prefix: --taxid
- id: in_ref_dir
  doc: 'DQC reference directory (default: DQC_REFERENCE_DIR)'
  type: File?
  inputBinding:
    prefix: --ref_dir
- id: in_prefix
  doc: 'Prefix for output (for debugging use, default: None)'
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_num_threads
  doc: 'Number of threads for parallel processing (default: 1)'
  type: long?
  inputBinding:
    prefix: --num_threads
- id: in_disable_tc
  doc: Disable taxonomy check using ANI
  type: boolean?
  inputBinding:
    prefix: --disable_tc
- id: in_disable_cc
  doc: Disable completeness check using CheckM
  type: boolean?
  inputBinding:
    prefix: --disable_cc
- id: in_force
  doc: Force overwriting result
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_debug
  doc: Debug mode
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_show_tax_on
  doc: Show available taxa for competeness check
  type: boolean?
  inputBinding:
    prefix: --show_taxon
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_dir
  doc: 'Output directory (default: OUT)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out_dir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dfast_qc:0.2.6--0
cwlVersion: v1.1
baseCommand:
- dfast_qc
