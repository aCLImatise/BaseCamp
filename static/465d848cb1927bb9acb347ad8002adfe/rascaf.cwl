class: CommandLineTool
id: rascaf.cwl
inputs:
- id: b
  doc: '(required): the path to the coordinate-sorted alignment BAM file'
  type: string
  inputBinding:
    prefix: -b
- id: f
  doc: '(recommended): the paths to the raw assembly fasta file(default: not used)'
  type: string
  inputBinding:
    prefix: -f
- id: o
  doc: ': prefix of the output file (default: rascaf)'
  type: string
  inputBinding:
    prefix: -o
- id: bc
  doc: ': the path to the alignment BAM file allowing clipping from non-spliced aligner
    (default: not used)'
  type: string
  inputBinding:
    prefix: -bc
- id: ms
  doc: ': minimum support for connecting two contigs(default: 2)'
  type: long
  inputBinding:
    prefix: -ms
- id: ml
  doc: ': minimum exonic length(default: 200)'
  type: long
  inputBinding:
    prefix: -ml
- id: break_n
  doc: ': the least number of Ns to break a scaffold in the raw assembly (default:
    1)'
  type: long
  inputBinding:
    prefix: -breakN
- id: k
  doc: ': the size of a kmer(<=32; <=0 if you do not want to use kmer. default: 23)'
  type: long
  inputBinding:
    prefix: -k
- id: cs
  doc: ': output the genomic sequence involved in connections in file $prefix_cs.fa
    (default: not used)'
  type: boolean
  inputBinding:
    prefix: -cs
- id: v
  doc: ': verbose mode (default: false)'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- rascaf
