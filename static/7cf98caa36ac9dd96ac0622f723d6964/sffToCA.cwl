class: CommandLineTool
id: sffToCA.cwl
inputs:
- id: linker
  doc: "[name | seq]   Search for linker, create mated reads. Name is one of: 'flx'\
    \      == GTTGGAACCGAAAGGGTTTGAATTCAAACCCTTTCGGTTCCAAC 'titanium' == TCGTATAACTTCGTATAATGTATGCTATACGAAGTTATTACG\
    \ and CGTAATAACTTCGTATAGCATACATTATACGAAGTTATACGA"
  type: boolean
  inputBinding:
    prefix: -linker
- id: linker_split
  doc: id cv    Threshold for splitting linker into mate pairs (0.90, 0.50).
  type: boolean
  inputBinding:
    prefix: -linkersplit
- id: linker_trim
  doc: id cv    Threshold for trimming linker out of a read (0.90, 0.33).
  type: boolean
  inputBinding:
    prefix: -linkertrim
- id: linker_detect
  doc: cv    Threshold for detecting linker (0.85, 0.25).
  type: string
  inputBinding:
    prefix: -linkerdetect
- id: node_dup
  doc: Do not remove reads that are a perfect prefix of another read.
  type: boolean
  inputBinding:
    prefix: -nodedup
- id: output
  doc: "Write output to files prefixed with 'name'.  Three files are created: name.frg\
    \   -- CA format fragments. name.log   -- Actions taken; deleted fragments, mate\
    \ splits, etc. name.stats -- Human-readable statistics."
  type: string
  inputBinding:
    prefix: -output
outputs: []
cwlVersion: v1.1
baseCommand:
- sffToCA
