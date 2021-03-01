class: CommandLineTool
id: FPKM_UQ.py.cwl
inputs:
- id: in_bam
  doc: "Alignment file in BAM format. BAM file shoul be sorted\nand indexed. Ideally,\
    \ the BAM file should generaet\nfrom the TCGA RNA-seq analysis workflow described\
    \ here\nhttps://docs.gdc.cancer.gov/Data/Bioinformatics_Pipeli\nnes/Expression_mRNA_Pipeline/."
  type: File?
  inputBinding:
    prefix: --bam
- id: in_gtf
  doc: Gene model in GTF format.
  type: File?
  inputBinding:
    prefix: --gtf
- id: in_info
  doc: Gene model information file.
  type: File?
  inputBinding:
    prefix: --info
- id: in_output
  doc: The prefix of the output file.
  type: File?
  inputBinding:
    prefix: --output
- id: in_log_two
  doc: "Convert FPKM and FPKM-UQ values into log2 (x+1) scale.\nA pseudo count 1 will\
    \ be added to each\ngene/transcript.\n"
  type: boolean?
  inputBinding:
    prefix: --log2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: The prefix of the output file.
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rseqc:4.0.0--py38h0213d0e_0
cwlVersion: v1.1
baseCommand:
- FPKM-UQ.py
