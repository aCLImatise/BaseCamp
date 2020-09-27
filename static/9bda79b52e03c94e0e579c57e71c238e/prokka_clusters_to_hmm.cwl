class: CommandLineTool
id: prokka_clusters_to_hmm.cwl
inputs:
- id: in_verbose
  doc: "!      Verbose output (default '0')."
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_dir
  doc: Source CLUSTERS folder (default '/bio/data/CLUSTERS/latest').
  type: Directory
  inputBinding:
    prefix: --dir
- id: in_lib
  doc: "Library: PHA PRK ... (default '')."
  type: string
  inputBinding:
    prefix: --lib
- id: in_outdir
  doc: Output folder for .hmm files and indices (default '.').
  type: Directory
  inputBinding:
    prefix: --outdir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Output folder for .hmm files and indices (default '.').
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
cwlVersion: v1.1
baseCommand:
- prokka-clusters_to_hmm
