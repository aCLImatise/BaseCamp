class: CommandLineTool
id: gatc.track.maker.pl.cwl
inputs:
- id: mi_to
  doc: Process mitochondrial chromosome (not recommended)
  type: boolean
  inputBinding:
    prefix: --mito
- id: name
  doc: Name of organism (for output file)
  type: boolean
  inputBinding:
    prefix: --name
- id: scaffolds
  doc: Process scaffold assemblies (not recommended)
  type: boolean
  inputBinding:
    prefix: --scaffolds
outputs: []
cwlVersion: v1.1
baseCommand:
- gatc.track.maker.pl
