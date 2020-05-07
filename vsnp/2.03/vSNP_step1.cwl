class: CommandLineTool
id: vSNP_step1.py.cwl
inputs:
- id: v_snp
  doc: 'installed with Mycobacterium_AF2122.  For additional reference options see:
    https://github.com/USDA-VS/vSNP_dependencies.git'
  type: string
  inputBinding:
    prefix: '- vSNP'
- id: read_1
  doc: 'Required: single read, R1 when Illumina read'
  type: string
  inputBinding:
    prefix: --read1
- id: read_2
  doc: 'Optional: R2 Illumina read'
  type: string
  inputBinding:
    prefix: --read2
- id: reference
  doc: 'Optional: Provide reference option or FASTA file. If neither are given, no
    -r option, then a TB/Brucella/paraTB best reference are searched'
  type: string
  inputBinding:
    prefix: --reference
- id: gbk
  doc: 'Optional: gbk to annotate VCF file'
  type: string
  inputBinding:
    prefix: --gbk
- id: table
  doc: See reference options
  type: boolean
  inputBinding:
    prefix: --table
- id: group
  doc: 'Optional: group output via best_reference.py, ie specify TB or Bruc which
    initials spoligo or MLST generation'
  type: string
  inputBinding:
    prefix: --group
- id: skip_assembly
  doc: 'Optional: skip assembly of unmapped reads'
  type: boolean
  inputBinding:
    prefix: --skip_assembly
outputs: []
cwlVersion: v1.1
baseCommand:
- vSNP_step1.py
