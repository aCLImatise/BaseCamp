class: CommandLineTool
id: sffToCA.cwl
inputs:
- id: in_insert_size
  doc: d        Mates are on average i +- d bp apart.
  type: string?
  inputBinding:
    prefix: -insertsize
- id: in_library_name
  doc: The UID of the library these reads are added to.
  type: string?
  inputBinding:
    prefix: -libraryname
- id: in_linker
  doc: "[name | seq]   Search for linker, create mated reads.\nName is one of:\n'flx'\
    \      == GTTGGAACCGAAAGGGTTTGAATTCAAACCCTTTCGGTTCCAAC\n'titanium' == TCGTATAACTTCGTATAATGTATGCTATACGAAGTTATTACG\
    \ and\nCGTAATAACTTCGTATAGCATACATTATACGAAGTTATACGA"
  type: boolean?
  inputBinding:
    prefix: -linker
- id: in_linker_split
  doc: id cv    Threshold for splitting linker into mate pairs (0.90, 0.50).
  type: boolean?
  inputBinding:
    prefix: -linkersplit
- id: in_linker_trim
  doc: id cv    Threshold for trimming linker out of a read (0.90, 0.33).
  type: boolean?
  inputBinding:
    prefix: -linkertrim
- id: in_linker_detect
  doc: cv    Threshold for detecting linker (0.85, 0.25).
  type: double?
  inputBinding:
    prefix: -linkerdetect
- id: in_node_dup
  doc: Do not remove reads that are a perfect prefix of another read.
  type: boolean?
  inputBinding:
    prefix: -nodedup
- id: in_output
  doc: "Write output to files prefixed with 'name'.  Three files are created:"
  type: string?
  inputBinding:
    prefix: -output
- id: in_name_dot_frg
  doc: -- CA format fragments.
  type: string
  inputBinding:
    position: 0
- id: in_name_dot_log
  doc: -- Actions taken; deleted fragments, mate splits, etc.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sffToCA
