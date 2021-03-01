class: CommandLineTool
id: run_tasmanian.cwl
inputs:
- id: in_unmask_genome
  doc: (convert masked bases to upper case and include them in the calculations -
    default=False)
  type: boolean?
  inputBinding:
    prefix: --unmask-genome
- id: in_base_quality
  doc: (default=20)
  type: boolean?
  inputBinding:
    prefix: --base-quality
- id: in_filter_in_del
  doc: (exclude reads with indels default=False)
  type: boolean?
  inputBinding:
    prefix: --filter-indel
- id: in_filter_length
  doc: (include only reads with x,y range of lengths, default=0, 76)
  type: boolean?
  inputBinding:
    prefix: --filter-length
- id: in_soft_clip_bypass
  doc: (Decide when softclipped base is correct(0). Don't use these bases(1). Force
    use them(2).  default=0)
  type: boolean?
  inputBinding:
    prefix: --soft-clip-bypass
- id: in_mapping_quality
  doc: (minimum allowed mapping quality -defailt=0)
  type: boolean?
  inputBinding:
    prefix: --mapping-quality
- id: in_output_prefix
  doc: (use this prefix for the output and logging files)
  type: boolean?
  inputBinding:
    prefix: --output-prefix
- id: in_confidence
  doc: (number of bases in the complement region of the read)
  type: boolean?
  inputBinding:
    prefix: --confidence
- id: in_debug
  doc: (create a log file)
  type: boolean?
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- run_tasmanian
