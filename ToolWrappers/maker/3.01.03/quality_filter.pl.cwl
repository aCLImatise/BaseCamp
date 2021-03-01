class: CommandLineTool
id: quality_filter.pl.cwl
inputs:
- id: in_prints_aed_maker
  doc: Prints transcripts with an AED <1 (MAKER default)
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_prints_transcripts_andor
  doc: "Prints transcripts with an AED <1 and/or Pfam domain\nif in gff3 (MAKER Standard)"
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_number_given_value
  doc: "<number between 0 and 1> Prints transcripts with an\nAED < the given value\n"
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_more_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -MORE_OPTIONS
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -OPTIONS
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/maker:3.01.03--pl526hb8757ab_0
cwlVersion: v1.1
baseCommand:
- quality_filter.pl
