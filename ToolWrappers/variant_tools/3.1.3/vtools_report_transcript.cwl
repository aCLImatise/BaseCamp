class: CommandLineTool
id: vtools_report_transcript.cwl
inputs:
- id: in_build
  doc: "[BUILD]       Output sequence at specified build of reference\ngenome. The\
    \ primary reference genome of the project\nwill be used if by default."
  type: boolean
  inputBinding:
    prefix: --build
- id: in_strand_only
  doc: Only output strand of genes that covers the region.
  type: boolean
  inputBinding:
    prefix: --strand_only
- id: in_first_transcript
  doc: "If set, only display the first transcript of RNA or\nProtein sequence"
  type: boolean
  inputBinding:
    prefix: --first_transcript
- id: in_zero_based
  doc: "If set, user input is zero based and will be\ntranslated to 1-based coordinates\
    \ before query. The\noutput is always 1-based"
  type: boolean
  inputBinding:
    prefix: --zero_based
- id: in_verbosity
  doc: "Output error and warning (0), info (1), debug (2) and\ntrace (3) information\
    \ to standard output (default to\n1).\n"
  type: string
  inputBinding:
    prefix: --verbosity
- id: in_regions
  doc: "'One or more chromosome regions in the format of\nchr:start-end (e.g. chr21:33,031,597-33,041,570),\n\
    Field:Value from a region-based annotation database\n(e.g. refGene.name2:TRIM2\
    \ or\nrefGene_exon.name:NM_000947), or set options of\nseveral regions (&, |,\
    \ -, and ^ for intersection,\nunion, difference, and symmetric difference)."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- vtools_report
- transcript
