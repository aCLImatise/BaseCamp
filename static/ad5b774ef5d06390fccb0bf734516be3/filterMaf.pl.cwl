class: CommandLineTool
id: filterMaf.pl.cwl
inputs:
- id: in_species
  doc: ",species2,...     a comma separated list of the species which shall be kept\
    \ in the filtered alignment (at least 2 species,\nby default all species are kept)"
  type: long
  inputBinding:
    prefix: --species
- id: in_min_seq
  doc: only blocks that contain at list N sequences are taken (N=2 by default)
  type: long
  inputBinding:
    prefix: --min-seq
- id: in_interval
  doc: :start-end          a genomic interval (seqID is equal to the first field of
    an 's' line in the alignment)
  type: string
  inputBinding:
    prefix: --interval
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- filterMaf.pl
