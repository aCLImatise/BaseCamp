class: CommandLineTool
id: agat_sq_add_locus_tag.pl.cwl
inputs:
- id: in_input
  doc: 'STRING: Input GTF/GFF file.'
  type: File
  inputBinding:
    prefix: --input
- id: in_type
  doc: "Primary tag option, case insensitive, list. Allow to specied the\nLevel1 feature\
    \ types that will be handled. By default all\nfeature Level1 are taken into account."
  type: long
  inputBinding:
    prefix: --type
- id: in_lo
  doc: "Locus tag output, by defaut it will be called locus_tag, but\nusing this option\
    \ you can specied the name of this attribute."
  type: string
  inputBinding:
    prefix: --lo
- id: in_li
  doc: "Tag input, by default the value of the locus tag attribute will\nbe locusX\
    \ where X is an incremented number. You can use the\nvalues of an existing attribute\
    \ instead e.g the ID value: --li\nID."
  type: long
  inputBinding:
    prefix: --li
- id: in_of
  doc: "Output format, if no ouput format is given, the same as the\ninput one detected\
    \ will be used. Otherwise you can force to have\na gff version 1 or 2 or 3 by\
    \ giving the corresponding number."
  type: boolean
  inputBinding:
    prefix: --of
- id: in_output
  doc: "STRING: Output file. If no output file is specified, the output\nwill be written\
    \ to STDOUT. The result is in tabulate format."
  type: File
  inputBinding:
    prefix: --output
- id: in_quiet
  doc: To remove verbosity.
  type: string
  inputBinding:
    prefix: --quiet
- id: in_agat_sq_add_locus_tag_do_tpl
  doc: 'Description:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "STRING: Output file. If no output file is specified, the output\nwill be written\
    \ to STDOUT. The result is in tabulate format."
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- agat_sq_add_locus_tag.pl
