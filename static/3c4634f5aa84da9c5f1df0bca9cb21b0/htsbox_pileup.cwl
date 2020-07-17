class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/htsbox_pileup.cwl
inputs:
- id: reference_genome
  doc: reference genome [null]
  type: File
  inputBinding:
    prefix: -f
- id: region
  doc: region [null]
  type: string
  inputBinding:
    prefix: -r
- id: bed_position_list
  doc: BED or position list file to include [null]
  type: File
  inputBinding:
    prefix: -b
- id: minimum_base_quality
  doc: minimum base quality [0]
  type: long
  inputBinding:
    prefix: -Q
- id: minimum_mapping_quality
  doc: minimum mapping quality [0]
  type: long
  inputBinding:
    prefix: -q
- id: minimum_query_length
  doc: minimum query length [0]
  type: long
  inputBinding:
    prefix: -l
- id: minimum_supplementary_alignment
  doc: minimum supplementary alignment length [0]
  type: long
  inputBinding:
    prefix: -S
- id: ignore_queries_perbase
  doc: ignore queries with per-base divergence >FLOAT [1]
  type: double
  inputBinding:
    prefix: -V
- id: ignore_bases_intbp
  doc: ignore bases within INT-bp from either end of a read [0]
  type: long
  inputBinding:
    prefix: -T
- id: base_quality_depth
  doc: base quality as depth
  type: boolean
  inputBinding:
    prefix: -d
- id: drop_alleles_depthint
  doc: drop alleles with depth<INT [1]
  type: long
  inputBinding:
    prefix: -s
- id: use_mark_deleted
  doc: use '*' to mark deleted bases
  type: boolean
  inputBinding:
    prefix: -e
- id: show_variants_only
  doc: show variants only
  type: boolean
  inputBinding:
    prefix: -v
- id: output_vcf_v
  doc: output in the VCF format (force -v)
  type: boolean
  inputBinding:
    prefix: -c
- id: show_count_allele
  doc: show count of each allele on both strands
  type: boolean
  inputBinding:
    prefix: -C
- id: output_consensus_fasta
  doc: output the consensus in FASTA
  type: boolean
  inputBinding:
    prefix: -F
- id: majorityallele_fasta_f
  doc: majority-allele FASTA (majfa; force -F)
  type: boolean
  inputBinding:
    prefix: -M
- id: randomallele_fasta_f
  doc: random-allele FASTA (randfa; force -F)
  type: boolean
  inputBinding:
    prefix: -R
- id: character_bases_identical
  doc: character for bases identical to the reference [ref]
  type: string
  inputBinding:
    prefix: -x
- id: soft_mask_sumq
  doc: soft mask if sumQ > avgSum+FLOAT*sqrt(avgSum) (force -F) [3.00]
  type: double
  inputBinding:
    prefix: -D
- id: unitig_calling_mode
  doc: unitig calling mode (-d -V.01 -S300 -q20 -Q3 -s5)
  type: boolean
  inputBinding:
    prefix: -u
- id: pile_up
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_one_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- htsbox
- pileup
