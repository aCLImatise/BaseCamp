class: CommandLineTool
id: bactopia_prepare.py.cwl
inputs:
- id: in_fast_q_ext
  doc: 'Extension of the FASTQs. Default: .fastq.gz'
  type: string
  inputBinding:
    prefix: --fastq_ext
- id: in_assembly_ext
  doc: 'Extension of the FASTA assemblies. Default: .fna.gz'
  type: string
  inputBinding:
    prefix: --assembly_ext
- id: in_fast_q_seperator
  doc: "Split FASTQ name on the last occurrence of the\nseparator. Default: _"
  type: string
  inputBinding:
    prefix: --fastq_seperator
- id: in_fast_q_pattern
  doc: 'Glob pattern to match FASTQs. Default: *.fastq.gz'
  type: string
  inputBinding:
    prefix: --fastq_pattern
- id: in_assembly_pattern
  doc: "Glob pattern to match assembly FASTAs. Default:\n*.fna.gz"
  type: string
  inputBinding:
    prefix: --assembly_pattern
- id: in_long_reads
  doc: Single-end reads should be treated as long reads
  type: boolean
  inputBinding:
    prefix: --long_reads
- id: in_bac_topia
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_prepare
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bactopia-prepare.py
