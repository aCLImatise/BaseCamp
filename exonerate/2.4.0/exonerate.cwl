class: CommandLineTool
id: ../../../exonerate.cwl
inputs:
- id: in_help
  doc: ''
  type: boolean
  inputBinding:
    prefix: --help
- id: in_query
  doc: ''
  type: File
  inputBinding:
    prefix: --query
- id: in_target
  doc: ''
  type: File
  inputBinding:
    prefix: --target
- id: in_query_type
  doc: ''
  type: string
  inputBinding:
    prefix: --querytype
- id: in_target_type
  doc: ''
  type: string
  inputBinding:
    prefix: --targettype
- id: in_query_chunk_id
  doc: ''
  type: boolean
  inputBinding:
    prefix: --querychunkid
- id: in_target_chunk_id
  doc: ''
  type: boolean
  inputBinding:
    prefix: --targetchunkid
- id: in_query_chunk_total
  doc: ''
  type: boolean
  inputBinding:
    prefix: --querychunktotal
- id: in_target_chunk_total
  doc: ''
  type: boolean
  inputBinding:
    prefix: --targetchunktotal
- id: in_verbose
  doc: ''
  type: string
  inputBinding:
    prefix: --verbose
- id: in_genetic_code
  doc: ''
  type: boolean
  inputBinding:
    prefix: --geneticcode
- id: in_exhaustive
  doc: ''
  type: boolean
  inputBinding:
    prefix: --exhaustive
- id: in_big_seq
  doc: ''
  type: boolean
  inputBinding:
    prefix: --bigseq
- id: in_rev_comp
  doc: ''
  type: boolean
  inputBinding:
    prefix: --revcomp
- id: in_forces_can
  doc: <[q|t]>
  type: boolean
  inputBinding:
    prefix: --forcescan
- id: in_saturate_threshold
  doc: ''
  type: long
  inputBinding:
    prefix: --saturatethreshold
- id: in_custom_server
  doc: ''
  type: string
  inputBinding:
    prefix: --customserver
- id: in_cores
  doc: ''
  type: long
  inputBinding:
    prefix: --cores
- id: in_fast_a_suffix
  doc: ''
  type: string
  inputBinding:
    prefix: --fastasuffix
- id: in_model
  doc: ''
  type: string
  inputBinding:
    prefix: --model
- id: in_score
  doc: ''
  type: string
  inputBinding:
    prefix: --score
- id: in_percent
  doc: ''
  type: string
  inputBinding:
    prefix: --percent
- id: in_show_alignment
  doc: ''
  type: boolean
  inputBinding:
    prefix: --showalignment
- id: in_show_sugar
  doc: ''
  type: boolean
  inputBinding:
    prefix: --showsugar
- id: in_show_cigar
  doc: ''
  type: boolean
  inputBinding:
    prefix: --showcigar
- id: in_show_vulgar
  doc: ''
  type: boolean
  inputBinding:
    prefix: --showvulgar
- id: in_show_query_gff
  doc: ''
  type: boolean
  inputBinding:
    prefix: --showquerygff
- id: in_show_target_gff
  doc: ''
  type: boolean
  inputBinding:
    prefix: --showtargetgff
- id: in_ryo
  doc: ''
  type: string
  inputBinding:
    prefix: --ryo
- id: in_best_n
  doc: ''
  type: long
  inputBinding:
    prefix: --bestn
- id: in_sub_opt
  doc: ''
  type: boolean
  inputBinding:
    prefix: --subopt
- id: in_gapped_extension
  doc: ''
  type: boolean
  inputBinding:
    prefix: --gappedextension
- id: in_refine
  doc: ''
  type: boolean
  inputBinding:
    prefix: --refine
- id: in_refine_boundary
  doc: ''
  type: boolean
  inputBinding:
    prefix: --refineboundary
- id: in_dp_memory
  doc: ''
  type: string
  inputBinding:
    prefix: --dpmemory
- id: in_compiled
  doc: ''
  type: boolean
  inputBinding:
    prefix: --compiled
- id: in_terminal_range_int
  doc: ''
  type: boolean
  inputBinding:
    prefix: --terminalrangeint
- id: in_terminal_range_ext
  doc: ''
  type: boolean
  inputBinding:
    prefix: --terminalrangeext
- id: in_join_range_int
  doc: ''
  type: boolean
  inputBinding:
    prefix: --joinrangeint
- id: in_join_range_ext
  doc: ''
  type: boolean
  inputBinding:
    prefix: --joinrangeext
- id: in_span_range_int
  doc: ''
  type: boolean
  inputBinding:
    prefix: --spanrangeint
- id: in_span_range_ext
  doc: ''
  type: boolean
  inputBinding:
    prefix: --spanrangeext
- id: in_extension_threshold
  doc: ''
  type: boolean
  inputBinding:
    prefix: --extensionthreshold
- id: in_single_pass
  doc: ''
  type: boolean
  inputBinding:
    prefix: --singlepass
- id: in_join_filter
  doc: ''
  type: boolean
  inputBinding:
    prefix: --joinfilter
- id: in_annotation
  doc: ''
  type: File
  inputBinding:
    prefix: --annotation
- id: in_soft_mask_query
  doc: ''
  type: boolean
  inputBinding:
    prefix: --softmaskquery
- id: in_soft_mask_target
  doc: ''
  type: boolean
  inputBinding:
    prefix: --softmasktarget
- id: in_dna_sub_mat
  doc: ''
  type: string
  inputBinding:
    prefix: --dnasubmat
- id: in_protein_sub_mat
  doc: ''
  type: string
  inputBinding:
    prefix: --proteinsubmat
- id: in_fsm_memory
  doc: ''
  type: string
  inputBinding:
    prefix: --fsmmemory
- id: in_force_fsm
  doc: ''
  type: string
  inputBinding:
    prefix: --forcefsm
- id: in_word_jump
  doc: ''
  type: boolean
  inputBinding:
    prefix: --wordjump
- id: in_word_ambiguity
  doc: ''
  type: boolean
  inputBinding:
    prefix: --wordambiguity
- id: in_gap_open
  doc: ''
  type: string
  inputBinding:
    prefix: --gapopen
- id: in_gap_extend
  doc: ''
  type: string
  inputBinding:
    prefix: --gapextend
- id: in_codon_gap_open
  doc: ''
  type: string
  inputBinding:
    prefix: --codongapopen
- id: in_codon_gap_extend
  doc: ''
  type: string
  inputBinding:
    prefix: --codongapextend
- id: in_minner
  doc: ''
  type: long
  inputBinding:
    prefix: --minner
- id: in_max_ner
  doc: ''
  type: long
  inputBinding:
    prefix: --maxner
- id: in_ner_open
  doc: ''
  type: string
  inputBinding:
    prefix: --neropen
- id: in_min_intron
  doc: ''
  type: long
  inputBinding:
    prefix: --minintron
- id: in_max_intron
  doc: ''
  type: long
  inputBinding:
    prefix: --maxintron
- id: in_intron_penalty
  doc: ''
  type: string
  inputBinding:
    prefix: --intronpenalty
- id: in_frameshift
  doc: ''
  type: string
  inputBinding:
    prefix: --frameshift
- id: in_use_a_atla
  doc: ''
  type: boolean
  inputBinding:
    prefix: --useaatla
- id: in_hsp_filter
  doc: ''
  type: boolean
  inputBinding:
    prefix: --hspfilter
- id: in_use_word_drop_off
  doc: ''
  type: boolean
  inputBinding:
    prefix: --useworddropoff
- id: in_seed_repeat
  doc: ''
  type: boolean
  inputBinding:
    prefix: --seedrepeat
- id: in_dna_word_len
  doc: ''
  type: string
  inputBinding:
    prefix: --dnawordlen
- id: in_protein_word_len
  doc: ''
  type: string
  inputBinding:
    prefix: --proteinwordlen
- id: in_codon_word_len
  doc: ''
  type: string
  inputBinding:
    prefix: --codonwordlen
- id: in_dna_hsp_drop_off
  doc: ''
  type: string
  inputBinding:
    prefix: --dnahspdropoff
- id: in_protein_hsp_drop_off
  doc: ''
  type: string
  inputBinding:
    prefix: --proteinhspdropoff
- id: in_codon_hsp_drop_off
  doc: ''
  type: string
  inputBinding:
    prefix: --codonhspdropoff
- id: in_dna_hsp_threshold
  doc: ''
  type: string
  inputBinding:
    prefix: --dnahspthreshold
- id: in_protein_hsp_threshold
  doc: ''
  type: string
  inputBinding:
    prefix: --proteinhspthreshold
- id: in_codon_hsp_threshold
  doc: ''
  type: string
  inputBinding:
    prefix: --codonhspthreshold
- id: in_dna_word_limit
  doc: ''
  type: string
  inputBinding:
    prefix: --dnawordlimit
- id: in_protein_word_limit
  doc: ''
  type: string
  inputBinding:
    prefix: --proteinwordlimit
- id: in_codon_word_limit
  doc: ''
  type: string
  inputBinding:
    prefix: --codonwordlimit
- id: in_gene_seed
  doc: ''
  type: string
  inputBinding:
    prefix: --geneseed
- id: in_gene_seed_repeat
  doc: ''
  type: long
  inputBinding:
    prefix: --geneseedrepeat
- id: in_alignment_width
  doc: ''
  type: boolean
  inputBinding:
    prefix: --alignmentwidth
- id: in_forward_coordinates
  doc: ''
  type: boolean
  inputBinding:
    prefix: --forwardcoordinates
- id: in_quality
  doc: ''
  type: string
  inputBinding:
    prefix: --quality
- id: in_splice_three
  doc: ''
  type: boolean
  inputBinding:
    prefix: --splice3
- id: in_splice_five
  doc: ''
  type: boolean
  inputBinding:
    prefix: --splice5
- id: in_force_g_tag
  doc: ''
  type: boolean
  inputBinding:
    prefix: --forcegtag
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- exonerate
