class: CommandLineTool
id: phyluce_assembly_filter_seqs_from_fastas.cwl
inputs:
- id: in_input
  doc: The directory containing the FASTA sequences to
  type: Directory?
  inputBinding:
    prefix: --input
- id: in_filtered_sequences_file
  doc: "The file that will contain names of sequences (and\nloci) removed"
  type: File?
  inputBinding:
    prefix: --filtered-sequences-file
- id: in_cores
  doc: The number of compute cores to use
  type: long?
  inputBinding:
    prefix: --cores
- id: in_verbosity
  doc: The logging level to use.
  type: string?
  inputBinding:
    prefix: --verbosity
- id: in_log_path
  doc: The path to a directory to hold logs.
  type: File?
  inputBinding:
    prefix: --log-path
- id: in_trim_length
  doc: "Proportion of the median length that will serve as cut\noff (default=0.5)"
  type: long?
  inputBinding:
    prefix: --trim-length
- id: in_count
  doc: "Number of sequences per locus that will serve as cut\noff (default=4).\n"
  type: long?
  inputBinding:
    prefix: --count
- id: in_var_7
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --output
- id: in__filteredsequencesfile
  doc: --filtered-sequences-file
  type: string
  inputBinding:
    position: 0
- id: in_short_sequences_file
  doc: '[--cores CORES]'
  type: string
  inputBinding:
    position: 1
- id: in_filter_dot
  doc: --output OUTPUT       An output directory to hold the converted alignments.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- phyluce_assembly_filter_seqs_from_fastas
