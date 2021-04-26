class: CommandLineTool
id: agat_sp_kraken_assess_liftover.pl.cwl
inputs:
- id: in_gtf
  doc: Input gtf file produced by Kraken.
  type: boolean?
  inputBinding:
    prefix: -gtf
- id: in_threshold
  doc: "Gene mapping percentage over which a gene must be reported. By\ndefault the\
    \ value is 0."
  type: long?
  inputBinding:
    prefix: --threshold
- id: in_verbose
  doc: Verbose information.
  type: string?
  inputBinding:
    prefix: --verbose
- id: in_outfile
  doc: "Output GFF file. If no output file is specified, the output will\nbe written\
    \ to STDOUT."
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_agat_sp_kraken_assess_lift_coverage_do_tpl
  doc: 'Description:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: "Output GFF file. If no output file is specified, the output will\nbe written\
    \ to STDOUT."
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/agat:0.6.1--pl5262r35hdfd78af_0
cwlVersion: v1.1
baseCommand:
- agat_sp_kraken_assess_liftover.pl
