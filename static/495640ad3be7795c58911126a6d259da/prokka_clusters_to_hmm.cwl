class: CommandLineTool
id: prokka_clusters_to_hmm.cwl
inputs:
- id: verbose
  doc: "!      Verbose output (default '0')."
  type: boolean
  inputBinding:
    prefix: --verbose
- id: dir
  doc: Source CLUSTERS folder (default '/bio/data/CLUSTERS/latest').
  type: string
  inputBinding:
    prefix: --dir
- id: lib
  doc: "Library: PHA PRK ... (default '')."
  type: string
  inputBinding:
    prefix: --lib
- id: outdir
  doc: Output folder for .hmm files and indices (default '.').
  type: string
  inputBinding:
    prefix: --outdir
outputs: []
cwlVersion: v1.1
baseCommand:
- prokka-clusters_to_hmm
