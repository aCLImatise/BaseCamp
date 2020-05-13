class: CommandLineTool
id: ezclermont.cwl
inputs:
- id: contigs
  doc: FASTA formatted genome or set of contigs. If reading from stdin, use '-'
  type: string
  inputBinding:
    position: 0
- id: min_length
  doc: 'minimum contig length to consider.default: 500'
  type: long
  inputBinding:
    prefix: --min_length
- id: experiment_name
  doc: name of experiment; defaults to file name without extension. If reading from
    stdin, uses the first contig's ID
  type: string
  inputBinding:
    prefix: --experiment_name
- id: no_partial
  doc: If scanning contigs, breaks between contigs could potentially contain your
    sequence of interest. if --no_partial, these plausible partial matches will NOT
    be reported; default behaviour is to consider partial hits if the assembly has
    more than 4 sequnces(ie, no partial matches for complete genomes, allowing for
    1 chromasome and several plasmids)
  type: boolean
  inputBinding:
    prefix: --no_partial
outputs: []
cwlVersion: v1.1
baseCommand:
- ezclermont
