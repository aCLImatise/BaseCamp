class: CommandLineTool
id: agat_sp_kraken_assess_liftover.pl.cwl
inputs:
- id: in_gff
  doc: Input gtf file produced by Kraken.
  type: boolean
  inputBinding:
    prefix: -gff
- id: in_threshold
  doc: "Gene mapping percentage over which a gene must be reported. By\ndefault the\
    \ value is 0."
  type: long
  inputBinding:
    prefix: --threshold
- id: in_verbose
  doc: Verbose information.
  type: string
  inputBinding:
    prefix: --verbose
- id: in__output_
  doc: ", --output , --out or --outfile\nOutput GFF file. If no output file is specified,\
    \ the output will\nbe written to STDOUT."
  type: File
  inputBinding:
    prefix: -o
- id: in_gtf
  doc: ''
  type: File
  inputBinding:
    prefix: --gtf
- id: in_agat_sp_kraken_assess_lift_coverage_do_tpl
  doc: 'Description:'
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
- agat_sp_kraken_assess_liftover.pl
