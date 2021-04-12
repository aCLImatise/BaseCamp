class: CommandLineTool
id: identifyHMM.cwl
inputs:
- id: in_marker_db
  doc: "Provide HMM file of markers. Markers should have a\ndescriptive ID name."
  type: File?
  inputBinding:
    prefix: --markerdb
- id: in_perform_prodigal
  doc: Run Prodigal on input genome nucleotide FASTA file
  type: boolean?
  inputBinding:
    prefix: --performProdigal
- id: in_cut_tc
  doc: use hmm profiles TC trusted cutoffs to set all
  type: boolean?
  inputBinding:
    prefix: --cut_tc
- id: in_set_evalue_used
  doc: 'Set E-Value to be used in hmmsearch. Default: 1E-5'
  type: double?
  inputBinding:
    prefix: -E
- id: in_thresholding
  doc: --outPrefix OUTPREFIX
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/binsanity:0.5.3--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- identifyHMM
