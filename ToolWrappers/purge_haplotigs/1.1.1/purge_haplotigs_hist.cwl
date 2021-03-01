class: CommandLineTool
id: purge_haplotigs_hist.cwl
inputs:
- id: in_bam
  doc: BAM file of aligned and sorted reads/subreads to the reference
  type: boolean?
  inputBinding:
    prefix: -bam
- id: in_genome
  doc: Reference FASTA for the BAM file.
  type: boolean?
  inputBinding:
    prefix: -genome
- id: in_threads
  doc: Number of worker threads to use, DEFAULT = 4, MINIMUM = 2
  type: boolean?
  inputBinding:
    prefix: -threads
- id: in_depth
  doc: "Maximum cutoff for depth. DEFAULT = 200, increase if needed,\nset much higher\
    \ than your expected average coverage.\n"
  type: boolean?
  inputBinding:
    prefix: -depth
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- purge_haplotigs
- hist
