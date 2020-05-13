class: CommandLineTool
id: parallel_pick_otus_sortmerna.py.cwl
inputs:
- id: input_fast_a_fp
  doc: Path to input fasta file. [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_fasta_fp
- id: output_dir
  doc: Directory where output should be written. [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_dir
- id: refseq_s_fp
  doc: Path to reference fasta file. [REQUIRED]
  type: string
  inputBinding:
    prefix: --refseqs_fp
outputs: []
cwlVersion: v1.1
baseCommand:
- parallel_pick_otus_sortmerna.py
