class: CommandLineTool
id: DISCASM.cwl
inputs:
- id: chimeric_junctions
  doc: STAR Chimeric.out.junction file
  type: string
  inputBinding:
    prefix: --chimeric_junctions
- id: aligned_bam
  doc: aligned bam file from your favorite rna-seq alignment tool
  type: string
  inputBinding:
    prefix: --aligned_bam
- id: left_fq
  doc: left fastq file
  type: string
  inputBinding:
    prefix: --left_fq
- id: right_fq
  doc: right fastq file
  type: string
  inputBinding:
    prefix: --right_fq
- id: out_dir
  doc: output directory
  type: string
  inputBinding:
    prefix: --out_dir
- id: de_novo_assembler
  doc: 'de novo assembly method: Trinity|Oases|OasesMultiK'
  type: string
  inputBinding:
    prefix: --denovo_assembler
- id: add_trinity_params
  doc: any additional parameters to pass on to Trinity if Trinity is the chosen assembler.
  type: string
  inputBinding:
    prefix: --add_trinity_params
- id: normalize_reads
  doc: perform in silico normalization prior to de novo assembly (not needed if using
    Trinity, since Trinity performs normalization internally
  type: boolean
  inputBinding:
    prefix: --normalize_reads
outputs: []
cwlVersion: v1.1
baseCommand:
- DISCASM
