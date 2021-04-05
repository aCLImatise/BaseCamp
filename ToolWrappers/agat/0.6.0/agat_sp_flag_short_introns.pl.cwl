class: CommandLineTool
id: agat_sp_flag_short_introns.pl.cwl
inputs:
- id: in_ref_file
  doc: Input GTF/GFF file.
  type: File?
  inputBinding:
    prefix: -reffile
- id: in_intron_size
  doc: "Minimum intron size, default 10. All genes with an intron < of\nthis size\
    \ will be flagged with the pseudo attribute (the value\nwill be the size of the\
    \ smallest intron found within the\nincriminated gene)"
  type: long?
  inputBinding:
    prefix: --intron_size
- id: in_output
  doc: Output gff3 file where the result will be printed.
  type: File?
  inputBinding:
    prefix: --output
- id: in_bolean_verbose_debugging
  doc: Bolean. Verbose for debugging purpose.
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_agat_sp_flag_short_introns_do_tpl
  doc: 'Description:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output gff3 file where the result will be printed.
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/agat:0.6.0--pl526r35_0
cwlVersion: v1.1
baseCommand:
- agat_sp_flag_short_introns.pl
