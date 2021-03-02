class: CommandLineTool
id: cassis.cwl
inputs:
- id: in_extend_before
  doc: '[T/F]'
  type: boolean?
  inputBinding:
    prefix: --extend_before
- id: in_extend_by_adding_gene
  doc: '[T/F]'
  type: boolean?
  inputBinding:
    prefix: --extend_by_adding_gene
- id: in_extend_ab_by_adding_gene
  doc: '[T/F]'
  type: boolean?
  inputBinding:
    prefix: --extend_ab_by_adding_gene
- id: in_sequence_sr_smaller
  doc: ': Sequence SR smaller than the allowed limit'
  type: boolean?
  inputBinding:
    prefix: '-2'
- id: in_sequence_sa_smaller
  doc: ': Sequence SA smaller than the allowed limit'
  type: boolean?
  inputBinding:
    prefix: '-3'
- id: in_sequence_sb_smaller
  doc: ': Sequence SB smaller than the allowed limit'
  type: boolean?
  inputBinding:
    prefix: '-4'
- id: in_sequence_sa_sb
  doc: ': Sequence SA and SB smaller than the allowed limit'
  type: boolean?
  inputBinding:
    prefix: '-5'
- id: in_sequence_sr_bigger
  doc: ': Sequence SR bigger than the allowed limit'
  type: boolean?
  inputBinding:
    prefix: '-6'
- id: in_segmentation_performed_there
  doc: ": Segmentation was not performed because there are no hits on\nthe alignments\
    \ of the sequences SR vs SA and SR vs SB"
  type: boolean?
  inputBinding:
    prefix: '-1'
- id: in_segmentation_performed_r
  doc: ': Segmentation was not performed because R aborted the execution'
  type: boolean?
  inputBinding:
    prefix: '-7'
- id: in_godot
  doc: "- id      = Name of the synteny block\n- c1      = Chromosome of the genome\
    \ GR where the block is located\n- inf1    = Start position of the block in the\
    \ chromosome c1\n- sup1    = End position of the block in the chromosome c1\n\
    - c2      = Chromosome of the genome GO where the block is located\n- inf2   \
    \ = Start position of the block in the chromosome c2\n- sup2    = End position\
    \ of the block in the chromosome c2\n- strand  = If 1, the synteny blocks of the\
    \ genomes GR and GO are on\nthe same strand. Otherwise, they are on different\
    \ strands."
  type: string
  inputBinding:
    position: 0
- id: in__breakpoint_id
  doc: '- Breakpoint ID'
  type: string
  inputBinding:
    position: 0
- id: in_type
  doc: '- Type of the breakpoint: inter or intra'
  type: string
  inputBinding:
    position: 1
- id: in_sr_gene_a
  doc: '- Name of the gene/block A in the sequence SR (genome GR)'
  type: string
  inputBinding:
    position: 2
- id: in_sr_gene_b
  doc: '- Name of the gene/block B in the sequence SR (genome GR)'
  type: string
  inputBinding:
    position: 3
- id: in_src_hr
  doc: '- Chromosome of the genes/blocks A and B (genome GR)'
  type: string
  inputBinding:
    position: 4
- id: in_sr_inf
  doc: '- Inferior boundary of the sequence SR'
  type: string
  inputBinding:
    position: 0
- id: in_srs_up
  doc: '- Superior boundary of the sequence SR'
  type: string
  inputBinding:
    position: 1
- id: in_so_gene_a
  doc: '- Name of the gene/block A in the sequence SA (genome GO)'
  type: string
  inputBinding:
    position: 2
- id: in_so_gene_b
  doc: '- Name of the gene/block B in the sequence SB (genome GO)'
  type: string
  inputBinding:
    position: 3
- id: in_so_chra
  doc: '- Chromosome of the gene/block A (genome GO)'
  type: string
  inputBinding:
    position: 4
- id: in_soc_hrb
  doc: '- Chromosome of the gene/block B (genome GO)'
  type: string
  inputBinding:
    position: 5
- id: in_so_inf_a
  doc: '- Inferior boundary of the sequence SA'
  type: string
  inputBinding:
    position: 0
- id: in_so_supa
  doc: '- Superior boundary of the sequence SA'
  type: string
  inputBinding:
    position: 1
- id: in_so_in_fb
  doc: '- Inferior boundary of the sequence SB'
  type: string
  inputBinding:
    position: 2
- id: in_so_sup_b
  doc: '- Superior boundary of the sequence SB'
  type: string
  inputBinding:
    position: 3
- id: in_bkp_begin
  doc: '- Relative position of the breakpoint begin (related to sRinf)'
  type: string
  inputBinding:
    position: 4
- id: in_bkp_end
  doc: '- Relative position of the breakpoint end (related to sRinf)'
  type: string
  inputBinding:
    position: 5
- id: in_var_28
  doc: '- Status of the breakpoint'
  type: string
  inputBinding:
    position: 6
- id: in_breakpoint_i_d
  doc: '- Breakpoint id'
  type: string
  inputBinding:
    position: 0
- id: in_chr
  doc: '- Chromosome where the breakpoint is located (Genome GR)'
  type: string
  inputBinding:
    position: 1
- id: in_old_begin
  doc: '- Old breakpoint begin position (in the chromosome sequence)'
  type: string
  inputBinding:
    position: 2
- id: in_old_end
  doc: '- Old breakpoint end position (in the chromosome sequence)'
  type: string
  inputBinding:
    position: 3
- id: in_new_begin
  doc: "- New breakpoint begin position (in the chromosome sequence) \nafter the segmentation"
  type: string
  inputBinding:
    position: 0
- id: in_new_end
  doc: "- New breakpoint end position (in the chromosome sequence)\nafter the segmentation"
  type: string
  inputBinding:
    position: 1
- id: in_var_35
  doc: '- Status of the breakpoint'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cassis:0.0.20120106--0
cwlVersion: v1.1
baseCommand:
- cassis
