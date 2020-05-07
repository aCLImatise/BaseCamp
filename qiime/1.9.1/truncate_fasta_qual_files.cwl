class: CommandLineTool
id: truncate_fasta_qual_files.py.cwl
inputs:
- id: fast_a_fp
  doc: Input fasta filepath to be truncated. [REQUIRED]
  type: string
  inputBinding:
    prefix: --fasta_fp
- id: qual_fp
  doc: Input quality scores filepath to be truncated. [REQUIRED]
  type: string
  inputBinding:
    prefix: --qual_fp
- id: base_pos
  doc: Nucleotide position to truncate the fasta and quality score files at. [REQUIRED]
  type: string
  inputBinding:
    prefix: --base_pos
outputs: []
cwlVersion: v1.1
baseCommand:
- truncate_fasta_qual_files.py
