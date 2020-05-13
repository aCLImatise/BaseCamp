class: CommandLineTool
id: moca_find_motifs.cwl
inputs:
- id: bed_file
  doc: Bed file input  [required]
  type: string
  inputBinding:
    prefix: --bedfile
- id: oc
  doc: Output Directory  [required]
  type: string
  inputBinding:
    prefix: --oc
- id: configuration
  doc: Configuration file  [required]
  type: string
  inputBinding:
    prefix: --configuration
- id: slop_length
  doc: Flanking sequence length
  type: long
  inputBinding:
    prefix: --slop-length
- id: flank_motif
  doc: Length of sequence flanking motif
  type: long
  inputBinding:
    prefix: --flank-motif
- id: n_motif
  doc: Number of motifs
  type: long
  inputBinding:
    prefix: --n-motif
- id: cores
  doc: Number of parallel MEME jobs  [required]
  type: long
  inputBinding:
    prefix: --cores
- id: genome_build
  doc: Key denoting genome build to use in configuration file  [required]
  type: string
  inputBinding:
    prefix: --genome-build
- id: show_progress
  doc: Print progress
  type: boolean
  inputBinding:
    prefix: --show-progress
outputs: []
cwlVersion: v1.1
baseCommand:
- moca
- find_motifs
