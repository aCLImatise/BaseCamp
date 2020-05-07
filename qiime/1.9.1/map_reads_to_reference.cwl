class: CommandLineTool
id: map_reads_to_reference.py.cwl
inputs:
- id: input_seqs_file_path
  doc: Path to input sequences file [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_seqs_filepath
- id: refseq_s_fp
  doc: 'Path to reference sequences to search against [default: none] [REQUIRED]'
  type: string
  inputBinding:
    prefix: --refseqs_fp
outputs: []
cwlVersion: v1.1
baseCommand:
- map_reads_to_reference.py
