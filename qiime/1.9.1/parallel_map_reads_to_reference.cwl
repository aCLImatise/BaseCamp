class: CommandLineTool
id: parallel_map_reads_to_reference.py.cwl
inputs:
- id: input_seqs_file_path
  doc: Path to input sequences file [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_seqs_filepath
- id: output_dir
  doc: Directory to store results [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_dir
- id: refseq_s_fp
  doc: Path to reference sequences [REQUIRED]
  type: string
  inputBinding:
    prefix: --refseqs_fp
outputs: []
cwlVersion: v1.1
baseCommand:
- parallel_map_reads_to_reference.py
