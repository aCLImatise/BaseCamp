class: CommandLineTool
id: ../../../tgsgapcloser.cwl
inputs:
- id: sc_aff
  doc: <scaffold_file>      the input scaffold file.
  type: boolean
  inputBinding:
    prefix: --scaff
- id: reads
  doc: <tgs_reads_file>     the input TGS reads file.
  type: boolean
  inputBinding:
    prefix: --reads
- id: output
  doc: <output_prefix>      the output prefix.
  type: boolean
  inputBinding:
    prefix: --output
- id: ngs
  doc: <ngs_reads>          the ngs reads used for pilon
  type: boolean
  inputBinding:
    prefix: --ngs
- id: pilon
  doc: <pilon>              the installed pilon.
  type: boolean
  inputBinding:
    prefix: --pilon
- id: sam_tools
  doc: <samtools>           the installed samtools.
  type: boolean
  inputBinding:
    prefix: --samtools
- id: java
  doc: <java>               the installed java.
  type: boolean
  inputBinding:
    prefix: --java
- id: tgs_type
  doc: <pb/ont>             TGS type . ont by default.
  type: boolean
  inputBinding:
    prefix: --tgstype
- id: min_id_y
  doc: <min_idy>            min_idy for filter reads . 0.3 for ont by default. 0.2
    for pb by default.
  type: boolean
  inputBinding:
    prefix: --min_idy
- id: min_match
  doc: min match length for filter reads . 300bp for ont by default. 200bp for pb
    by default.
  type: long
  inputBinding:
    prefix: --min_match
- id: thread
  doc: <t_num>              thread uesd . 16 by default.
  type: boolean
  inputBinding:
    prefix: --thread
- id: chunk
  doc: <chunk_num>          split candidate into chunks to error-correct separately.
  type: boolean
  inputBinding:
    prefix: --chunk
- id: pilon_mem
  doc: memory used for pilon , 300G for default.
  type: string
  inputBinding:
    prefix: --pilon_mem
- id: p_round
  doc: <pilon_round>        pilon error-correction round num . 3 by default.
  type: boolean
  inputBinding:
    prefix: --p_round
- id: r_round
  doc: <racon_round>        racon error-correction round num . 1 by default.
  type: boolean
  inputBinding:
    prefix: --r_round
- id: g_check
  doc: gapsize diff check , none by default.
  type: boolean
  inputBinding:
    prefix: --g_check
- id: options_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- tgsgapcloser
