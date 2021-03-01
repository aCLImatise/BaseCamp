class: CommandLineTool
id: phyluce_align_get_trimmed_alignments_from_untrimmed.cwl
inputs:
- id: in_alignments
  doc: "The directory containing alignments to be trimmed.\n(default: None)"
  type: Directory?
  inputBinding:
    prefix: --alignments
- id: in_directory_store_resultingalignments
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
- id: in_window
  doc: 'Sliding window size for trimming. (default: 20)'
  type: long?
  inputBinding:
    prefix: --window
- id: in_proportion
  doc: "The proportion of taxa required to have sequence at\nalignment ends. (default:\
    \ 0.65)"
  type: double?
  inputBinding:
    prefix: --proportion
- id: in_threshold
  doc: "The proportion of residues required across the window\nin proportion of taxa.\
    \ (default: 0.65)"
  type: double?
  inputBinding:
    prefix: --threshold
- id: in_max_divergence
  doc: "The max proportion of sequence divergence allowed\nbetween any row of the\
    \ alignment and the alignment\nconsensus. (default: 0.2)"
  type: long?
  inputBinding:
    prefix: --max_divergence
- id: in_min_length
  doc: "The minimum length of alignments to keep. (default:\n100)"
  type: long?
  inputBinding:
    prefix: --min-length
- id: in_cores
  doc: "Process alignments in parallel using --cores for\nalignment. This is the number\
    \ of PHYSICAL CPUs.\n(default: 1)\n"
  type: long?
  inputBinding:
    prefix: --cores
- id: in_var_12
  doc: '[--input-format {fasta,nexus,phylip,clustal,emboss,stockholm}]'
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
- phyluce_align_get_trimmed_alignments_from_untrimmed
