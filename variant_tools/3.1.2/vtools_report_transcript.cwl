class: CommandLineTool
id: vtools_report_transcript.cwl
inputs:
- id: regions
  doc: "'One or more chromosome regions in the format of chr:start-end (e.g. chr21:33,031,597-33,041,570),\
    \ Field:Value from a region-based annotation database (e.g. refGene.name2:TRIM2\
    \ or refGene_exon.name:NM_000947), or set options of several regions (&, |, -,\
    \ and ^ for intersection, union, difference, and symmetric difference)."
  type: string
  inputBinding:
    position: 0
- id: build
  doc: '[BUILD]       Output sequence at specified build of reference genome. The
    primary reference genome of the project will be used if by default.'
  type: boolean
  inputBinding:
    prefix: --build
- id: strand_only
  doc: Only output strand of genes that covers the region.
  type: boolean
  inputBinding:
    prefix: --strand_only
- id: first_transcript
  doc: If set, only display the first transcript of RNA or Protein sequence
  type: boolean
  inputBinding:
    prefix: --first_transcript
- id: zero_based
  doc: If set, user input is zero based and will be translated to 1-based coordinates
    before query. The output is always 1-based
  type: boolean
  inputBinding:
    prefix: --zero_based
- id: v
  doc: '{0,1,2,3}, --verbosity {0,1,2,3} Output error and warning (0), info (1), debug
    (2) and trace (3) information to standard output (default to 1).'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- vtools_report
- transcript
