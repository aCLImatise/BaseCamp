class: CommandLineTool
id: anvi_script_get_primer_matches.cwl
inputs:
- id: in_primer_sequences
  doc: '[-m INT]'
  type: File?
  inputBinding:
    prefix: --primer-sequences
- id: in_tabdelimited_file_are
  doc: "A TAB-delimited file with columns ['sample', 'r1',\n'r2'] or ['sample', 'group',\
    \ 'r1', 'r2'] where `r1`\nand `r2` columns are paths to compressed or flat FASTQ\n\
    files for each `sample` and `group` is an optional\ncolumn for relevant applications\
    \ where samples are\naffiliated with one-word categorical variables that\ndefine\
    \ to which group they are assigned. (default:\nNone)"
  type: File?
  inputBinding:
    prefix: --samples-txt
- id: in_min_remainder_length
  doc: "Minimum length of the remainder of the read after a\nmatch. If your short\
    \ read is XXXMMMMMMYYYYYYYYYYYYYY,\nwhere Ms indicate the primer sequence, min\
    \ remainder\nlength is equal to the length of nucleotide matching\nY. Default\
    \ is 60."
  type: long?
  inputBinding:
    prefix: --min-remainder-length
- id: in_report_raw
  doc: "Just report them sequences. Don't bother trimming.\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --report-raw
- id: in_stop_after
  doc: "Stop after X number of hits because who needs data.\n(default: 0)"
  type: long?
  inputBinding:
    prefix: --stop-after
- id: in_output_dir
  doc: 'Directory path for output files (default: None)'
  type: File?
  inputBinding:
    prefix: --output-dir
- id: in_oligo_typing_dot
  doc: '🧀 Can consume: '
  type: string
  inputBinding:
    position: 0
- id: in__can_provide
  doc: '🍕 Can provide: '
  type: string
  inputBinding:
    position: 1
- id: in_short_reads_fast_a
  doc: '🍺 More on `anvi-script-get-primer-matches`:'
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: 'Directory path for output files (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/anvio-minimal:7--py_0
cwlVersion: v1.1
baseCommand:
- anvi-script-get-primer-matches
