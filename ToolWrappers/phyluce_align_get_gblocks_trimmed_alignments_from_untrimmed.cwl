class: CommandLineTool
id: phyluce_align_get_gblocks_trimmed_alignments_from_untrimmed.cwl
inputs:
- id: in_alignments
  doc: "The directory containing alignments to be trimmed.\n(default: None)"
  type: Directory
  inputBinding:
    prefix: --alignments
- id: in_output
  doc: "The directory in which to store the resulting\nalignments. (default: None)"
  type: Directory
  inputBinding:
    prefix: --output
- id: in_input_format
  doc: 'The input alignment format. (default: fasta)'
  type: string
  inputBinding:
    prefix: --input-format
- id: in_output_format
  doc: 'The output alignment format. (default: nexus)'
  type: string
  inputBinding:
    prefix: --output-format
- id: in_bone
  doc: 'The GBLOCKS -b1 proportion. (default: 0.5)'
  type: long
  inputBinding:
    prefix: --b1
- id: in_b_two
  doc: 'The GBLOCKS -b2 proportion. (default: 0.85)'
  type: long
  inputBinding:
    prefix: --b2
- id: in_b_three
  doc: 'The GBLOCKS -b3 integer value. (default: 8)'
  type: long
  inputBinding:
    prefix: --b3
- id: in_b_four
  doc: 'The GBLOCKS -b4 integer value. (default: 10)'
  type: long
  inputBinding:
    prefix: --b4
- id: in_verbosity
  doc: 'The logging level to use. (default: INFO)'
  type: string
  inputBinding:
    prefix: --verbosity
- id: in_log_path
  doc: 'The path to a directory to hold logs. (default: None)'
  type: File
  inputBinding:
    prefix: --log-path
- id: in_cores
  doc: "Process alignments in parallel using --cores for\nalignment. This is the number\
    \ of PHYSICAL CPUs.\n(default: 1)\n"
  type: long
  inputBinding:
    prefix: --cores
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phyluce_align_get_gblocks_trimmed_alignments_from_untrimmed
