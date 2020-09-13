class: CommandLineTool
id: ../../../agat_sp_sensitivity_specificity.pl.cwl
inputs:
- id: in_gff_one
  doc: Input GTF/GFF file 1.
  type: boolean
  inputBinding:
    prefix: -gff1
- id: in_gff_two
  doc: Input GTF/GFF file 2.
  type: boolean
  inputBinding:
    prefix: -gff2
- id: in__output_
  doc: ", --output , --out or --outfile\nOutput GFF file. If no output file is specified,\
    \ the output will\nbe written to STDOUT."
  type: File
  inputBinding:
    prefix: -o
- id: in_verbose_option_debug
  doc: Verbose option for debug purposes.
  type: boolean
  inputBinding:
    prefix: -v
- id: in_agat_sp_sensitivity_specificity_do_tpl
  doc: 'Description:'
  type: string
  inputBinding:
    position: 0
- id: in_tn
  doc: Sensitivity and Specificity will be computed for each feature types.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__output_
  doc: ", --output , --out or --outfile\nOutput GFF file. If no output file is specified,\
    \ the output will\nbe written to STDOUT."
  type: File
  outputBinding:
    glob: $(inputs.in__output_)
cwlVersion: v1.1
baseCommand:
- agat_sp_sensitivity_specificity.pl
