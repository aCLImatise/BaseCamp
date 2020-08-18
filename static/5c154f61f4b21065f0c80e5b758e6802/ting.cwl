class: CommandLineTool
id: ../../../ting.cwl
inputs:
- id: tcr_sequences
  doc: File holding TCRs
  type: string
  inputBinding:
    prefix: --tcr_sequences
- id: reference
  doc: Reference fasta file of naive CDR3 amino acid sequences used for estimation
    of significant k-mers.
  type: string
  inputBinding:
    prefix: --reference
- id: km_er_file
  doc: tab separated file holding kmers in first row
  type: string
  inputBinding:
    prefix: --kmer_file
- id: output
  doc: path of output-file
  type: string
  inputBinding:
    prefix: --output
- id: use_structural_boundaries
  doc: First and last three amino acids are included in processing
  type: boolean
  inputBinding:
    prefix: --use_structural_boundaries
- id: no_global
  doc: If set global clustering is excluded
  type: boolean
  inputBinding:
    prefix: --no_global
- id: no_local
  doc: If set local clustering is excluded
  type: boolean
  inputBinding:
    prefix: --no_local
- id: max_p_value
  doc: p-value threshold for identifying significant k-mers by fisher exact test
  type: long
  inputBinding:
    prefix: --max_p_value
- id: gli_ph_min_p
  doc: probability threshold for identifying significant k-mers by gliph test
  type: string
  inputBinding:
    prefix: --gliph_minp
- id: stringent_filtering
  doc: If used only TCRs starting with a cystein and ending with phenylalanine will
    be used
  type: boolean
  inputBinding:
    prefix: --stringent_filtering
- id: km_ers_gli_ph
  doc: If set kmers are identified by the non-deterministic approach as implemented
    by gliph
  type: boolean
  inputBinding:
    prefix: --kmers_gliph
outputs: []
cwlVersion: v1.1
baseCommand:
- ting
