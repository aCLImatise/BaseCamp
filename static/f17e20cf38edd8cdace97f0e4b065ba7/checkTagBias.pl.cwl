class: CommandLineTool
id: checkTagBias.pl.cwl
inputs:
- id: in_start
  doc: <#> (offset to start frequency calculation, default=-50)
  type: boolean
  inputBinding:
    prefix: -start
- id: in_end
  doc: <#> (offset to end frequency calculation, default=200)
  type: boolean
  inputBinding:
    prefix: -end
- id: in_gc_start
  doc: <#> (offset to start GC% calculation, default=0)
  type: boolean
  inputBinding:
    prefix: -gcstart
- id: in_gc_end
  doc: <#> (offset to end GC% calculation, default=100)
  type: boolean
  inputBinding:
    prefix: -gcend
- id: in_keep
  doc: (do not delete sequence files for each tag position)
  type: boolean
  inputBinding:
    prefix: -keep
- id: in_three_p
  doc: (if tags have lengths, align them at the 3' end)
  type: boolean
  inputBinding:
    prefix: -3p
- id: in_pos
  doc: (only check positive or negative strands)
  type: string
  inputBinding:
    prefix: -pos
- id: in_skip_gc
  doc: (skip GC% calculation)
  type: boolean
  inputBinding:
    prefix: -skipGC
- id: in_skip_freq
  doc: (skip nucleotide frequency calculation)
  type: boolean
  inputBinding:
    prefix: -skipFreq
- id: in_prefix
  doc: '(output files will start with prefix name, default: directory name)'
  type: Directory
  inputBinding:
    prefix: -prefix
- id: in_mask
  doc: (use repeat-masked genome)
  type: boolean
  inputBinding:
    prefix: -mask
- id: in_tag_cpg_content_dot_txt
  doc: chr(N).tags.tsv.seq (if -keep is used)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_prefix
  doc: '(output files will start with prefix name, default: directory name)'
  type: Directory
  outputBinding:
    glob: $(inputs.in_prefix)
cwlVersion: v1.1
baseCommand:
- checkTagBias.pl
