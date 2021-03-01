class: CommandLineTool
id: sqStoreDumpMetaData.cwl
inputs:
- id: in_dump_reads_from
  doc: dump reads from 'seqStore'
  type: string?
  inputBinding:
    prefix: -S
- id: in_libs
  doc: dump information about libraries
  type: boolean?
  inputBinding:
    prefix: -libs
- id: in_reads
  doc: "dump information about reads\nThere are four pairs of flags, one for raw,\
    \ raw-trimmed,\ncorrected and corrected-trimmed.  Each pair tells if\nthe sequence\
    \ is valid and if it is ignored.\n1st letter - valid (uppercase) or invalid (lowercase).\n\
    2nd letter - used  (uppercase) or ignored (lowercase).\n1st pair   - raw sequence.\n\
    2nd pair   - raw sequence, trimmed.\n3rd pair   - corrected sequence.\n4th pair\
    \   - corrected sequence, trimmed.\nExample:\nRR--c--- - Raw version exists and\
    \ is used.  Corrected\nversion doesn't exist.\nRR--CCTt - Both raw and corrected\
    \ versions exist and are used.\nCorrected trimmed version exists, but is ignored."
  type: boolean?
  inputBinding:
    prefix: -reads
- id: in_stats
  doc: dump summary statistics on reads
  type: boolean?
  inputBinding:
    prefix: -stats
- id: in_histogram
  doc: dump a length histogram
  type: boolean?
  inputBinding:
    prefix: -histogram
- id: in_lengths
  doc: dump just the (sorted) read lengths
  type: boolean?
  inputBinding:
    prefix: -lengths
- id: in_output_readslibraies_end
  doc: '[-end]     output reads/libraies from `bgn` to `end`, inclusive'
  type: string?
  inputBinding:
    prefix: -r
- id: in_raw
  doc: restrict to 'raw' reads
  type: boolean?
  inputBinding:
    prefix: -raw
- id: in_corrected
  doc: restrict to 'corrected' reads
  type: boolean?
  inputBinding:
    prefix: -corrected
- id: in_trimmed
  doc: restrict to 'trimmed' reads
  type: boolean?
  inputBinding:
    prefix: -trimmed
- id: in_compressed
  doc: restrict to 'compressed' reads
  type: boolean?
  inputBinding:
    prefix: -compressed
- id: in_p
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/canu:2.1.1--he1b5a44_1
cwlVersion: v1.1
baseCommand:
- sqStoreDumpMetaData
