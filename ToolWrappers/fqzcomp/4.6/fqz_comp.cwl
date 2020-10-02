class: CommandLineTool
id: fqz_comp.cwl
inputs:
- id: in_perform_lossy_compression
  doc: "Perform lossy compression with all quality values\nbeing within 'num' distance\
    \ from their original value.\nDefault is lossless, i.e. \"-q 0\""
  type: long
  inputBinding:
    prefix: -Q
- id: in_sequence_compression_level
  doc: "Sequence compression level. 1-9 [Def. 3]\nSpecifying '+' on the end (eg -s5+)\
    \ will use\nmodels of multiple sizes for improved compression."
  type: long
  inputBinding:
    prefix: -s
- id: in_use_strands_sequence
  doc: Use both strands in sequence hash table.
  type: boolean
  inputBinding:
    prefix: -b
- id: in_extra_seq_bit
  doc: 'Extra seq compression: 16-bit vs 8-bit counters.'
  type: boolean
  inputBinding:
    prefix: -e
- id: in_quality_compression_level
  doc: Quality compression level.  1-3 [Def. 2]
  type: long
  inputBinding:
    prefix: -q
- id: in_name_compression_level
  doc: Name compression level.  1-2 [Def. 2]
  type: long
  inputBinding:
    prefix: -n
- id: in_disable_multithreading
  doc: Disable multi-threading
  type: boolean
  inputBinding:
    prefix: -P
- id: in_disable_generationverification_check
  doc: Disable generation/verification of check sums
  type: boolean
  inputBinding:
    prefix: -X
- id: in_solid_format
  doc: SOLiD format
  type: boolean
  inputBinding:
    prefix: -S
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fqz_comp
