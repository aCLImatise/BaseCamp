class: CommandLineTool
id: scssim_learn.cwl
inputs:
- id: in_bam
  doc: normal BAM file
  type: File?
  inputBinding:
    prefix: --bam
- id: in_target
  doc: exome target file (.bed) for whole-exome sequencing[default:null]
  type: File?
  inputBinding:
    prefix: --target
- id: in_vcf
  doc: the VCF file generated from the normal BAM
  type: File?
  inputBinding:
    prefix: --vcf
- id: in_ref
  doc: genome reference file (.fasta) to which the reads were aligned
  type: File?
  inputBinding:
    prefix: --ref
- id: in_w_size
  doc: the length of windows used to infer GC-content bias[default:1000]
  type: long?
  inputBinding:
    prefix: --wsize
- id: in_km_er
  doc: the length of kmer sequence [default:3]
  type: long?
  inputBinding:
    prefix: --kmer
- id: in_output
  doc: output file
  type: File?
  inputBinding:
    prefix: --output
- id: in_sam_tools
  doc: the path of samtools [default:samtools]
  type: File?
  inputBinding:
    prefix: --samtools
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output file
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- scssim
- learn
