class: CommandLineTool
id: checkm_unbinned.cwl
inputs:
- id: in_extension
  doc: 'extension of bins (other files in directory are ignored) (default: fna)'
  type: Directory?
  inputBinding:
    prefix: --extension
- id: in_min_seq_len
  doc: required length of sequence
  type: long?
  inputBinding:
    prefix: --min_seq_len
- id: in_quiet
  doc: suppress console output
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_bin_dir
  doc: directory containing bins (fasta format)
  type: string
  inputBinding:
    position: 0
- id: in_seq_file
  doc: sequences used to generate bins (fasta format)
  type: string
  inputBinding:
    position: 1
- id: in_output_seq_file
  doc: write unbinned sequences to file
  type: string
  inputBinding:
    position: 2
- id: in_output_stats_file
  doc: write unbinned sequence statistics to file
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- checkm
- unbinned
