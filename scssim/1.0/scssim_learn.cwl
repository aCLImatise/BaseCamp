class: CommandLineTool
id: scssim_learn.cwl
inputs:
- id: bam
  doc: normal BAM file
  type: string
  inputBinding:
    prefix: --bam
- id: target
  doc: exome target file (.bed) for whole-exome sequencing[default:null]
  type: string
  inputBinding:
    prefix: --target
- id: vcf
  doc: the VCF file generated from the normal BAM
  type: string
  inputBinding:
    prefix: --vcf
- id: ref
  doc: genome reference file (.fasta) to which the reads were aligned
  type: string
  inputBinding:
    prefix: --ref
- id: w_size
  doc: the length of windows used to infer GC-content bias[default:1000]
  type: long
  inputBinding:
    prefix: --wsize
- id: km_er
  doc: the length of kmer sequence [default:3]
  type: long
  inputBinding:
    prefix: --kmer
- id: output
  doc: output file
  type: string
  inputBinding:
    prefix: --output
- id: sam_tools
  doc: the path of samtools [default:samtools]
  type: string
  inputBinding:
    prefix: --samtools
outputs: []
cwlVersion: v1.1
baseCommand:
- scssim
- learn
