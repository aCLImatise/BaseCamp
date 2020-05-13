class: CommandLineTool
id: alfred_ase.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: m
  doc: '[ --map-qual ] arg (=10)      min. mapping quality'
  type: boolean
  inputBinding:
    prefix: -m
- id: b
  doc: '[ --base-qual ] arg (=10)     min. base quality'
  type: boolean
  inputBinding:
    prefix: -b
- id: r
  doc: '[ --reference ] arg           reference fasta file'
  type: boolean
  inputBinding:
    prefix: -r
- id: s
  doc: '[ --sample ] arg (=NA12878)   sample name'
  type: boolean
  inputBinding:
    prefix: -s
- id: a
  doc: '[ --ase ] arg (="as.tsv.gz")  allele-specific output file'
  type: boolean
  inputBinding:
    prefix: -a
- id: v
  doc: '[ --vcffile ] arg             input (phased) BCF file'
  type: boolean
  inputBinding:
    prefix: -v
- id: p
  doc: '[ --phased ]                  BCF file is phased and BAM is haplo-tagged'
  type: boolean
  inputBinding:
    prefix: -p
- id: f
  doc: '[ --full ]                    output all het. input SNPs'
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- alfred
- ase
