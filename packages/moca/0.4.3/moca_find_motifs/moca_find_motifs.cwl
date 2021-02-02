class: CommandLineTool
id: moca_find_motifs.cwl
inputs:
- id: in_bed_file
  doc: Bed file input  [required]
  type: File
  inputBinding:
    prefix: --bedfile
- id: in_oc
  doc: Output Directory  [required]
  type: Directory
  inputBinding:
    prefix: --oc
- id: in_configuration
  doc: Configuration file  [required]
  type: File
  inputBinding:
    prefix: --configuration
- id: in_slop_length
  doc: Flanking sequence length
  type: long
  inputBinding:
    prefix: --slop-length
- id: in_flank_motif
  doc: Length of sequence flanking motif
  type: long
  inputBinding:
    prefix: --flank-motif
- id: in_n_motif
  doc: Number of motifs
  type: long
  inputBinding:
    prefix: --n-motif
- id: in_cores
  doc: Number of parallel MEME jobs  [required]
  type: long
  inputBinding:
    prefix: --cores
- id: in_genome_build
  doc: "Key denoting genome build to use in\nconfiguration file  [required]"
  type: File
  inputBinding:
    prefix: --genome-build
- id: in_show_progress
  doc: Print progress
  type: boolean
  inputBinding:
    prefix: --show-progress
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_oc
  doc: Output Directory  [required]
  type: Directory
  outputBinding:
    glob: $(inputs.in_oc)
cwlVersion: v1.1
baseCommand:
- moca
- find_motifs
