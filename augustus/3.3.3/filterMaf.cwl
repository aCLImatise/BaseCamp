class: CommandLineTool
id: filterMaf.pl.cwl
inputs:
- id: species
  doc: ',species2,...     a comma separated list of the species which shall be kept
    in the filtered alignment (at least 2 species, by default all species are kept)                '
  type: string
  inputBinding:
    prefix: --species
- id: min_seq
  doc: only blocks that contain at list N sequences are taken (N=2 by default)
  type: string
  inputBinding:
    prefix: --min-seq
- id: interval
  doc: :start-end          a genomic interval (seqID is equal to the first field of
    an 's' line in the alignment)
  type: string
  inputBinding:
    prefix: --interval
outputs: []
cwlVersion: v1.1
baseCommand:
- filterMaf.pl
