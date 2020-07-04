class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/alfred_split.cwl
inputs:
- id: arg_min_quality
  doc: '[ --map-qual ] arg (=10)     min. mapping quality'
  type: boolean
  inputBinding:
    prefix: -m
- id: arg_reference_fasta
  doc: '[ --reference ] arg          reference fasta file'
  type: boolean
  inputBinding:
    prefix: -r
- id: p
  doc: '[ --hap1 ] arg (="h1.bam")   haplotype1 output file'
  type: boolean
  inputBinding:
    prefix: -p
- id: q
  doc: '[ --hap2 ] arg (="h2.bam")   haplotype2 output file'
  type: boolean
  inputBinding:
    prefix: -q
- id: arg_na_sample
  doc: '[ --sample ] arg (=NA12878)  sample name (as in BCF)'
  type: boolean
  inputBinding:
    prefix: -s
- id: arg_input_phased
  doc: '[ --vcffile ] arg            input phased VCF/BCF file'
  type: boolean
  inputBinding:
    prefix: -v
- id: assign_unphased_reads
  doc: '[ --assign ]                 assign unphased reads randomly'
  type: boolean
  inputBinding:
    prefix: -a
- id: single_haplotypetagged_bam
  doc: '[ --interleaved ]            single haplotype-tagged BAM'
  type: boolean
  inputBinding:
    prefix: -i
- id: un_phased_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- alfred
- split
