class: CommandLineTool
id: bactopia_prepare.py.cwl
inputs:
- id: in_fast_q_ext
  doc: 'Extension of the FASTQs. Default: .fastq.gz'
  type: string?
  inputBinding:
    prefix: --fastq_ext
- id: in_assembly_ext
  doc: 'Extension of the FASTA assemblies. Default: .fna.gz'
  type: string?
  inputBinding:
    prefix: --assembly_ext
- id: in_fast_q_seperator
  doc: "Split FASTQ name on the last occurrence of the\nseparator. Default: _"
  type: string?
  inputBinding:
    prefix: --fastq_seperator
- id: in_fast_q_pattern
  doc: 'Glob pattern to match FASTQs. Default: *.fastq.gz'
  type: string?
  inputBinding:
    prefix: --fastq_pattern
- id: in_pe_one_pattern
  doc: "Designates difference first set of paired-end reads.\nDefault: ([Aa]|[Rr]1)\
    \ (R1, r1, 1, A, a)"
  type: long?
  inputBinding:
    prefix: --pe1_pattern
- id: in_pe_two_pattern
  doc: "Designates difference second set of paired-end reads.\nDefault: ([Bb]|[Rr]2)\
    \ (R2, r2, 2, AB b)"
  type: long?
  inputBinding:
    prefix: --pe2_pattern
- id: in_assembly_pattern
  doc: "Glob pattern to match assembly FASTAs. Default:\n*.fna.gz"
  type: string?
  inputBinding:
    prefix: --assembly_pattern
- id: in_recursive
  doc: Directories will be traversed recursively
  type: boolean?
  inputBinding:
    prefix: --recursive
- id: in_long_reads
  doc: Single-end reads should be treated as long reads
  type: boolean?
  inputBinding:
    prefix: --long_reads
- id: in_merge
  doc: Flag samples with multiple read sets to be merged by
  type: boolean?
  inputBinding:
    prefix: --merge
- id: in_bac_topia
  doc: --prefix STR          Replace the absolute path with a given string.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bactopia:1.6.5--hdfd78af_1
cwlVersion: v1.1
baseCommand:
- bactopia-prepare.py
