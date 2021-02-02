class: CommandLineTool
id: tgsgapcloser.cwl
inputs:
- id: in_sc_aff
  doc: <scaffold_file>      the input scaffold file.
  type: boolean
  inputBinding:
    prefix: --scaff
- id: in_reads
  doc: <tgs_reads_file>     the input TGS reads file.
  type: boolean
  inputBinding:
    prefix: --reads
- id: in_output
  doc: <output_prefix>      the output prefix.
  type: boolean
  inputBinding:
    prefix: --output
- id: in_ne
  doc: do not error correct. error correct by default.
  type: boolean
  inputBinding:
    prefix: --ne
- id: in_pilon
  doc: <pilon>              the installed pilon.
  type: boolean
  inputBinding:
    prefix: --pilon
- id: in_sam_tools
  doc: <samtools>           the installed samtools.
  type: boolean
  inputBinding:
    prefix: --samtools
- id: in_java
  doc: <java>               the installed java.
  type: boolean
  inputBinding:
    prefix: --java
- id: in_tgs_type
  doc: <pb/ont>             TGS type . ont by default.
  type: boolean
  inputBinding:
    prefix: --tgstype
- id: in_min_id_y
  doc: "<min_idy>            min_idy for filter reads .\n0.3 for ont by default.\n\
    0.2 for pb by default."
  type: boolean
  inputBinding:
    prefix: --min_idy
- id: in_min_match
  doc: "min match length for filter reads .\n300bp for ont by default.\n200bp for\
    \ pb by default."
  type: long
  inputBinding:
    prefix: --min_match
- id: in_thread
  doc: <t_num>              thread uesd . 16 by default.
  type: boolean
  inputBinding:
    prefix: --thread
- id: in_chunk
  doc: <chunk_num>          split candidate into chunks to error-correct separately.
  type: boolean
  inputBinding:
    prefix: --chunk
- id: in_pilon_mem
  doc: memory used for pilon , 300G for default.
  type: long
  inputBinding:
    prefix: --pilon_mem
- id: in_p_round
  doc: <pilon_round>        pilon error-correction round num . 3 by default.
  type: boolean
  inputBinding:
    prefix: --p_round
- id: in_r_round
  doc: <racon_round>        racon error-correction round num . 1 by default.
  type: boolean
  inputBinding:
    prefix: --r_round
- id: in_g_check
  doc: gapsize diff check , none by default.
  type: boolean
  inputBinding:
    prefix: --g_check
- id: in_ngs
  doc: ''
  type: boolean
  inputBinding:
    prefix: --ngs
- id: in_rac_on
  doc: ''
  type: boolean
  inputBinding:
    prefix: --racon
- id: in_tgs_gap_closer
  doc: --scaff SCAFF_FILE --reads TGS_READS_FILE --output OUT_PREFIX [options...]
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tgsgapcloser
