class: CommandLineTool
id: panaroo_fmg.cwl
inputs:
- id: tree
  doc: A dated phylogeny.
  type: string
  inputBinding:
    prefix: --tree
- id: pa
  doc: A presence/absence produced by Panaroo.
  type: string
  inputBinding:
    prefix: --pa
- id: outfile
  doc: Name of outputfile.
  type: string
  inputBinding:
    prefix: --outfile
- id: n_boot
  doc: The number of sub-sampling bootstrap iterations to perform.
  type: string
  inputBinding:
    prefix: --nboot
- id: threads
  doc: number of threads to use (default=1)
  type: string
  inputBinding:
    prefix: --threads
- id: verbose
  doc: print additional output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- panaroo-fmg
