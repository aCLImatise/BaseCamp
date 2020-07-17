class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fqz_comp.cwl
inputs:
- id: perform_lossy_compression
  doc: Perform lossy compression with all quality values being within 'num' distance
    from their original value. Default is lossless, i.e. "-q 0"
  type: string
  inputBinding:
    prefix: -Q
- id: sequence_compression_level
  doc: Sequence compression level. 1-9 [Def. 3] Specifying '+' on the end (eg -s5+)
    will use models of multiple sizes for improved compression.
  type: string
  inputBinding:
    prefix: -s
- id: use_strands_sequence
  doc: Use both strands in sequence hash table.
  type: boolean
  inputBinding:
    prefix: -b
- id: extra_seq_compression
  doc: 'Extra seq compression: 16-bit vs 8-bit counters.'
  type: boolean
  inputBinding:
    prefix: -e
- id: quality_compression_level
  doc: Quality compression level.  1-3 [Def. 2]
  type: string
  inputBinding:
    prefix: -q
- id: name_compression_level
  doc: Name compression level.  1-2 [Def. 2]
  type: string
  inputBinding:
    prefix: -n
- id: disable_multithreading
  doc: Disable multi-threading
  type: boolean
  inputBinding:
    prefix: -P
- id: disable_generationverification_check
  doc: Disable generation/verification of check sums
  type: boolean
  inputBinding:
    prefix: -X
- id: solid_format
  doc: SOLiD format
  type: boolean
  inputBinding:
    prefix: -S
outputs: []
cwlVersion: v1.1
baseCommand:
- fqz_comp
