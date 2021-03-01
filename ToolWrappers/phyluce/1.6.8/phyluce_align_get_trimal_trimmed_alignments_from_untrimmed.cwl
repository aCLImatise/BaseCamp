class: CommandLineTool
id: phyluce_align_get_trimal_trimmed_alignments_from_untrimmed.cwl
inputs:
- id: in_alignments
  doc: "The directory containing alignments to be trimmed.\n(default: None)"
  type: Directory?
  inputBinding:
    prefix: --alignments
- id: in_output
  doc: "The directory in which to store the resulting\nalignments. (default: None)"
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_input_format
  doc: 'The input alignment format. (default: fasta)'
  type: string?
  inputBinding:
    prefix: --input-format
- id: in_output_format
  doc: 'The output alignment format. (default: nexus)'
  type: string?
  inputBinding:
    prefix: --output-format
- id: in_verbosity
  doc: 'The logging level to use. (default: INFO)'
  type: string?
  inputBinding:
    prefix: --verbosity
- id: in_log_path
  doc: 'The path to a directory to hold logs. (default: None)'
  type: File?
  inputBinding:
    prefix: --log-path
- id: in_cores
  doc: "Process alignments in parallel using --cores for\nalignment. This is the number\
    \ of PHYSICAL CPUs.\n(default: 1)\n"
  type: long?
  inputBinding:
    prefix: --cores
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- phyluce_align_get_trimal_trimmed_alignments_from_untrimmed
