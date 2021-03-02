class: CommandLineTool
id: phyluce_probe_get_clusters_from_bed.cwl
inputs:
- id: in_bed
  doc: The BED directory you want to search for clusters
  type: Directory?
  inputBinding:
    prefix: --bed
- id: in_outdir
  doc: The output directory to store results
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_files
  doc: "Specific files in the directory you want to process\n"
  type: string[]
  inputBinding:
    prefix: --files
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: The output directory to store results
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- phyluce_probe_get_clusters_from_bed
