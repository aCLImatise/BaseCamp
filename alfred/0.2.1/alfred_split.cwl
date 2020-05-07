class: CommandLineTool
id: alfred_split.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: un_phased_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: m
  doc: '[ --map-qual ] arg (=10)     min. mapping quality'
  type: boolean
  inputBinding:
    prefix: -m
- id: r
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
- id: s
  doc: '[ --sample ] arg (=NA12878)  sample name (as in BCF)'
  type: boolean
  inputBinding:
    prefix: -s
- id: v
  doc: '[ --vcffile ] arg            input phased VCF/BCF file'
  type: boolean
  inputBinding:
    prefix: -v
- id: a
  doc: '[ --assign ]                 assign unphased reads randomly'
  type: boolean
  inputBinding:
    prefix: -a
- id: i
  doc: '[ --interleaved ]            single haplotype-tagged BAM'
  type: boolean
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- alfred
- split
