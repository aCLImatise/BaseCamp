class: CommandLineTool
id: phyluce_align_get_gblocks_trimmed_alignments_from_untrimmed.cwl
inputs:
- id: alignments
  doc: 'The directory containing alignments to be trimmed. (default: None)'
  type: string
  inputBinding:
    prefix: --alignments
- id: output
  doc: 'The directory in which to store the resulting alignments. (default: None)'
  type: string
  inputBinding:
    prefix: --output
- id: input_format
  doc: 'The input alignment format. (default: fasta)'
  type: string
  inputBinding:
    prefix: --input-format
- id: output_format
  doc: 'The output alignment format. (default: nexus)'
  type: string
  inputBinding:
    prefix: --output-format
- id: b1
  doc: 'The GBLOCKS -b1 proportion. (default: 0.5)'
  type: string
  inputBinding:
    prefix: --b1
- id: b2
  doc: 'The GBLOCKS -b2 proportion. (default: 0.85)'
  type: string
  inputBinding:
    prefix: --b2
- id: b3
  doc: 'The GBLOCKS -b3 integer value. (default: 8)'
  type: string
  inputBinding:
    prefix: --b3
- id: b4
  doc: 'The GBLOCKS -b4 integer value. (default: 10)'
  type: string
  inputBinding:
    prefix: --b4
- id: verbosity
  doc: 'The logging level to use. (default: INFO)'
  type: string
  inputBinding:
    prefix: --verbosity
- id: log_path
  doc: 'The path to a directory to hold logs. (default: None)'
  type: string
  inputBinding:
    prefix: --log-path
- id: cores
  doc: 'Process alignments in parallel using --cores for alignment. This is the number
    of PHYSICAL CPUs. (default: 1)'
  type: string
  inputBinding:
    prefix: --cores
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_align_get_gblocks_trimmed_alignments_from_untrimmed
