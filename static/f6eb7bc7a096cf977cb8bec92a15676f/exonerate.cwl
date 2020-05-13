class: CommandLineTool
id: exonerate.cwl
inputs:
- id: query_chunk_id
  doc: '[0] '
  type: boolean
  inputBinding:
    prefix: --querychunkid
- id: target_chunk_id
  doc: '[0] '
  type: boolean
  inputBinding:
    prefix: --targetchunkid
- id: query_chunk_total
  doc: '[0] '
  type: boolean
  inputBinding:
    prefix: --querychunktotal
- id: target_chunk_total
  doc: '[0] '
  type: boolean
  inputBinding:
    prefix: --targetchunktotal
- id: genetic_code
  doc: '[1] '
  type: boolean
  inputBinding:
    prefix: --geneticcode
- id: forces_can
  doc: '[none] '
  type: boolean
  inputBinding:
    prefix: --forcescan
- id: saturate_threshold
  doc: '[0] '
  type: boolean
  inputBinding:
    prefix: --saturatethreshold
- id: custom_server
  doc: '[NULL] '
  type: boolean
  inputBinding:
    prefix: --customserver
- id: fast_a_suffix
  doc: '[.fa] '
  type: boolean
  inputBinding:
    prefix: --fastasuffix
- id: percent
  doc: '[0.0] '
  type: boolean
  inputBinding:
    prefix: --percent
- id: show_alignment
  doc: '[TRUE] '
  type: boolean
  inputBinding:
    prefix: --showalignment
- id: show_sugar
  doc: '[FALSE] '
  type: boolean
  inputBinding:
    prefix: --showsugar
- id: show_cigar
  doc: '[FALSE] '
  type: boolean
  inputBinding:
    prefix: --showcigar
- id: show_vulgar
  doc: '[TRUE] '
  type: boolean
  inputBinding:
    prefix: --showvulgar
- id: show_query_gff
  doc: '[FALSE] '
  type: boolean
  inputBinding:
    prefix: --showquerygff
- id: show_target_gff
  doc: '[FALSE] '
  type: boolean
  inputBinding:
    prefix: --showtargetgff
- id: ryo
  doc: '[NULL] '
  type: boolean
  inputBinding:
    prefix: --ryo
- id: refine
  doc: '[none] '
  type: boolean
  inputBinding:
    prefix: --refine
- id: refine_boundary
  doc: '[32] '
  type: boolean
  inputBinding:
    prefix: --refineboundary
- id: terminal_range_int
  doc: '[12] '
  type: boolean
  inputBinding:
    prefix: --terminalrangeint
- id: terminal_range_ext
  doc: '[12] '
  type: boolean
  inputBinding:
    prefix: --terminalrangeext
- id: join_range_int
  doc: '[12] '
  type: boolean
  inputBinding:
    prefix: --joinrangeint
- id: join_range_ext
  doc: '[12] '
  type: boolean
  inputBinding:
    prefix: --joinrangeext
- id: span_range_int
  doc: '[12] '
  type: boolean
  inputBinding:
    prefix: --spanrangeint
- id: span_range_ext
  doc: '[12] '
  type: boolean
  inputBinding:
    prefix: --spanrangeext
- id: single_pass
  doc: '[TRUE] '
  type: boolean
  inputBinding:
    prefix: --singlepass
- id: join_filter
  doc: '[0] '
  type: boolean
  inputBinding:
    prefix: --joinfilter
- id: soft_mask_query
  doc: '[FALSE] '
  type: boolean
  inputBinding:
    prefix: --softmaskquery
- id: soft_mask_target
  doc: '[FALSE] '
  type: boolean
  inputBinding:
    prefix: --softmasktarget
- id: force_fsm
  doc: '[none] '
  type: boolean
  inputBinding:
    prefix: --forcefsm
- id: word_jump
  doc: '[1] '
  type: boolean
  inputBinding:
    prefix: --wordjump
- id: word_ambiguity
  doc: '[1] '
  type: boolean
  inputBinding:
    prefix: --wordambiguity
- id: codon_gap_open
  doc: '[-18] '
  type: boolean
  inputBinding:
    prefix: --codongapopen
- id: codon_gap_extend
  doc: '[-8] '
  type: boolean
  inputBinding:
    prefix: --codongapextend
- id: minner
  doc: '[10] '
  type: boolean
  inputBinding:
    prefix: --minner
- id: max_ner
  doc: '[50000] '
  type: boolean
  inputBinding:
    prefix: --maxner
- id: ner_open
  doc: '[-20] '
  type: boolean
  inputBinding:
    prefix: --neropen
- id: min_intron
  doc: '[30] '
  type: boolean
  inputBinding:
    prefix: --minintron
- id: max_intron
  doc: '[200000] '
  type: boolean
  inputBinding:
    prefix: --maxintron
- id: use_a_atla
  doc: '[TRUE] '
  type: boolean
  inputBinding:
    prefix: --useaatla
- id: hsp_filter
  doc: '[0] '
  type: boolean
  inputBinding:
    prefix: --hspfilter
- id: use_word_drop_off
  doc: '[TRUE] '
  type: boolean
  inputBinding:
    prefix: --useworddropoff
- id: seed_repeat
  doc: '[1] '
  type: boolean
  inputBinding:
    prefix: --seedrepeat
- id: dna_word_len
  doc: '[12] '
  type: boolean
  inputBinding:
    prefix: --dnawordlen
- id: protein_word_len
  doc: '[6] '
  type: boolean
  inputBinding:
    prefix: --proteinwordlen
- id: codon_word_len
  doc: '[12] '
  type: boolean
  inputBinding:
    prefix: --codonwordlen
- id: dna_hsp_drop_off
  doc: '[30] '
  type: boolean
  inputBinding:
    prefix: --dnahspdropoff
- id: protein_hsp_drop_off
  doc: '[20] '
  type: boolean
  inputBinding:
    prefix: --proteinhspdropoff
- id: codon_hsp_drop_off
  doc: '[40] '
  type: boolean
  inputBinding:
    prefix: --codonhspdropoff
- id: dna_hsp_threshold
  doc: '[75] '
  type: boolean
  inputBinding:
    prefix: --dnahspthreshold
- id: protein_hsp_threshold
  doc: '[30] '
  type: boolean
  inputBinding:
    prefix: --proteinhspthreshold
- id: codon_hsp_threshold
  doc: '[50] '
  type: boolean
  inputBinding:
    prefix: --codonhspthreshold
- id: dna_word_limit
  doc: '[0] '
  type: boolean
  inputBinding:
    prefix: --dnawordlimit
- id: protein_word_limit
  doc: '[4] '
  type: boolean
  inputBinding:
    prefix: --proteinwordlimit
- id: codon_word_limit
  doc: '[4] '
  type: boolean
  inputBinding:
    prefix: --codonwordlimit
- id: gene_seed
  doc: '[0] '
  type: boolean
  inputBinding:
    prefix: --geneseed
- id: gene_seed_repeat
  doc: '[3] '
  type: boolean
  inputBinding:
    prefix: --geneseedrepeat
- id: alignment_width
  doc: '[80] '
  type: boolean
  inputBinding:
    prefix: --alignmentwidth
- id: forward_coordinates
  doc: '[TRUE] '
  type: boolean
  inputBinding:
    prefix: --forwardcoordinates
- id: quality
  doc: '[0] '
  type: boolean
  inputBinding:
    prefix: --quality
- id: splice_3
  doc: '[primate] '
  type: boolean
  inputBinding:
    prefix: --splice3
- id: splice_5
  doc: '[primate] '
  type: boolean
  inputBinding:
    prefix: --splice5
- id: force_g_tag
  doc: '[FALSE] '
  type: boolean
  inputBinding:
    prefix: --forcegtag
outputs: []
cwlVersion: v1.1
baseCommand:
- exonerate
