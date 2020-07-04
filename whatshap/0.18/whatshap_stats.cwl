class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/whatshap_stats.cwl
inputs:
- id: gtf
  doc: Write phased blocks to GTF file.
  type: string
  inputBinding:
    prefix: --gtf
- id: sample
  doc: Name of the sample to process. If not given, use first sample found in VCF.
  type: string
  inputBinding:
    prefix: --sample
- id: chr_lengths
  doc: File with chromosome lengths (one line per chromosome, tab separated "<chr>
    <length>") needed to compute N50 values.
  type: string
  inputBinding:
    prefix: --chr-lengths
- id: tsv
  doc: Filename to write statistics to (tab-separated).
  type: string
  inputBinding:
    prefix: --tsv
- id: only_sn_vs
  doc: Only process SNVs and ignore all other variants.
  type: boolean
  inputBinding:
    prefix: --only-snvs
- id: block_list
  doc: Filename to write list of all blocks to (one block per line).
  type: string
  inputBinding:
    prefix: --block-list
- id: chromosome
  doc: Name of chromosome to process. If not given, all chromosomes in the input VCF
    are considered.
  type: string
  inputBinding:
    prefix: --chromosome
- id: vcf
  doc: Phased VCF file
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- whatshap
- stats
