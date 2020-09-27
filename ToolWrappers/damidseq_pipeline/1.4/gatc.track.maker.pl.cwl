class: CommandLineTool
id: gatc.track.maker.pl.cwl
inputs:
- id: in_mi_to
  doc: Process mitochondrial chromosome (not recommended)
  type: boolean
  inputBinding:
    prefix: --mito
- id: in_name
  doc: Name of organism (for output file)
  type: File
  inputBinding:
    prefix: --name
- id: in_scaffolds
  doc: Process scaffold assemblies (not recommended)
  type: boolean
  inputBinding:
    prefix: --scaffolds
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_name
  doc: Name of organism (for output file)
  type: File
  outputBinding:
    glob: $(inputs.in_name)
cwlVersion: v1.1
baseCommand:
- gatc.track.maker.pl
