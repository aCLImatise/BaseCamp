class: CommandLineTool
id: DISCASM.cwl
inputs:
- id: in_chimeric_junctions
  doc: STAR Chimeric.out.junction file
  type: File
  inputBinding:
    prefix: --chimeric_junctions
- id: in_aligned_bam
  doc: "aligned bam file from your favorite rna-seq alignment\ntool"
  type: File
  inputBinding:
    prefix: --aligned_bam
- id: in_left_fq
  doc: left fastq file
  type: File
  inputBinding:
    prefix: --left_fq
- id: in_right_fq
  doc: right fastq file
  type: File
  inputBinding:
    prefix: --right_fq
- id: in_out_dir
  doc: output directory
  type: Directory
  inputBinding:
    prefix: --out_dir
- id: in_de_novo_assembler
  doc: 'de novo assembly method: Trinity|Oases|OasesMultiK'
  type: string
  inputBinding:
    prefix: --denovo_assembler
- id: in_add_trinity_params
  doc: "any additional parameters to pass on to Trinity if\nTrinity is the chosen\
    \ assembler."
  type: string
  inputBinding:
    prefix: --add_trinity_params
- id: in_normalize_reads
  doc: "perform in silico normalization prior to de novo\nassembly (not needed if\
    \ using Trinity, since Trinity\nperforms normalization internally\n"
  type: boolean
  inputBinding:
    prefix: --normalize_reads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_chimeric_junctions
  doc: STAR Chimeric.out.junction file
  type: File
  outputBinding:
    glob: $(inputs.in_chimeric_junctions)
- id: out_out_dir
  doc: output directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_out_dir)
cwlVersion: v1.1
baseCommand:
- DISCASM
