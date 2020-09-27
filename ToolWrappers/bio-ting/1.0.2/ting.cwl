class: CommandLineTool
id: ting.cwl
inputs:
- id: in_tcr_sequences
  doc: File holding TCRs
  type: File
  inputBinding:
    prefix: --tcr_sequences
- id: in_reference
  doc: "Reference fasta file of naive CDR3 amino acid\nsequences used for estimation\
    \ of significant k-mers."
  type: File
  inputBinding:
    prefix: --reference
- id: in_km_er_file
  doc: tab separated file holding kmers in first row
  type: File
  inputBinding:
    prefix: --kmer_file
- id: in_output
  doc: path of output-file
  type: File
  inputBinding:
    prefix: --output
- id: in_use_structural_boundaries
  doc: "First and last three amino acids are included in\nprocessing"
  type: boolean
  inputBinding:
    prefix: --use_structural_boundaries
- id: in_no_global
  doc: If set global clustering is excluded
  type: boolean
  inputBinding:
    prefix: --no_global
- id: in_no_local
  doc: If set local clustering is excluded
  type: boolean
  inputBinding:
    prefix: --no_local
- id: in_max_p_value
  doc: "p-value threshold for identifying significant k-mers\nby fisher exact test"
  type: string
  inputBinding:
    prefix: --max_p_value
- id: in_gli_ph_min_p
  doc: "probability threshold for identifying significant\nk-mers by gliph test"
  type: long
  inputBinding:
    prefix: --gliph_minp
- id: in_stringent_filtering
  doc: "If used only TCRs starting with a cystein and ending\nwith phenylalanine will\
    \ be used"
  type: boolean
  inputBinding:
    prefix: --stringent_filtering
- id: in_km_ers_gli_ph
  doc: "If set kmers are identified by the non-deterministic\napproach as implemented\
    \ by gliph\n"
  type: boolean
  inputBinding:
    prefix: --kmers_gliph
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: path of output-file
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- ting
