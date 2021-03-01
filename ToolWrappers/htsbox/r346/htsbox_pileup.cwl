class: CommandLineTool
id: htsbox_pileup.cwl
inputs:
- id: in_reference_genome
  doc: reference genome [null]
  type: File?
  inputBinding:
    prefix: -f
- id: in_region
  doc: region [null]
  type: string?
  inputBinding:
    prefix: -r
- id: in_bed_position_list
  doc: BED or position list file to include [null]
  type: File?
  inputBinding:
    prefix: -b
- id: in_minimum_base_quality
  doc: minimum base quality [0]
  type: long?
  inputBinding:
    prefix: -Q
- id: in_minimum_mapping_quality
  doc: minimum mapping quality [0]
  type: long?
  inputBinding:
    prefix: -q
- id: in_minimum_query_length
  doc: minimum query length [0]
  type: long?
  inputBinding:
    prefix: -l
- id: in_minimum_supplementary_alignment
  doc: minimum supplementary alignment length [0]
  type: long?
  inputBinding:
    prefix: -S
- id: in_ignore_queries_perbase
  doc: ignore queries with per-base divergence >FLOAT [1]
  type: double?
  inputBinding:
    prefix: -V
- id: in_ignore_bases_intbp
  doc: ignore bases within INT-bp from either end of a read [0]
  type: long?
  inputBinding:
    prefix: -T
- id: in_base_quality_depth
  doc: base quality as depth
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_drop_alleles_depthint
  doc: drop alleles with depth<INT [1]
  type: long?
  inputBinding:
    prefix: -s
- id: in_use_mark_bases
  doc: use '*' to mark deleted bases
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_show_variants_only
  doc: show variants only
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_output_vcf_format
  doc: output in the VCF format (force -v)
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_show_count_allele
  doc: show count of each allele on both strands
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_output_consensus_fasta
  doc: output the consensus in FASTA
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_majorityallele_fasta_majfa
  doc: majority-allele FASTA (majfa; force -F)
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_randomallele_fasta_randfa
  doc: random-allele FASTA (randfa; force -F)
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_character_bases_identical
  doc: character for bases identical to the reference [ref]
  type: string?
  inputBinding:
    prefix: -x
- id: in_soft_mask_avgsumfloatsqrtavgsum
  doc: soft mask if sumQ > avgSum+FLOAT*sqrt(avgSum) (force -F) [3.00]
  type: double?
  inputBinding:
    prefix: -D
- id: in_unitig_calling_mode
  doc: unitig calling mode (-d -V.01 -S300 -q20 -Q3 -s5)
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_pile_up
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in_one_dot_bam
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- htsbox
- pileup
