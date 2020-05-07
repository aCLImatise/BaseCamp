class: CommandLineTool
id: GenomeOntology.pl.cwl
inputs:
- id: g_size
  doc: <#> (Genome size used for significance calculations)
  type: boolean
  inputBinding:
    prefix: -gsize
- id: bg
  doc: <peakfile/Tag Directory> (Performs additional significance calculations relative
    to Control Peaks/Tags)
  type: boolean
  inputBinding:
    prefix: -bg
outputs: []
cwlVersion: v1.1
baseCommand:
- GenomeOntology.pl
