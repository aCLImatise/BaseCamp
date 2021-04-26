class: CommandLineTool
id: agat_sp_filter_gene_by_intron_numbers.pl.cwl
inputs:
- id: in_nb
  doc: '[ --output outfile ]'
  type: long?
  inputBinding:
    prefix: --nb
- id: in_ref_file
  doc: Input GFF3 file that will be read
  type: File?
  inputBinding:
    prefix: --reffile
- id: in_number
  doc: Integer - Number of introns [Default 0]
  type: long?
  inputBinding:
    prefix: --number
- id: in_test
  doc: to apply (>, <, =, >= or <=). If you use one of these
  type: string?
  inputBinding:
    prefix: --test
- id: in_output
  doc: "Output GFF file. If no output file is specified, the output will\nbe written\
    \ to STDOUT."
  type: File?
  inputBinding:
    prefix: --output
- id: in_verbose_option_debugging
  doc: Verbose option for debugging purpose.
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_agat_sp_filter_gene_by_intron_numbers_do_tpl
  doc: 'Description:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output GFF file. If no output file is specified, the output will\nbe written\
    \ to STDOUT."
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/agat:0.6.1--pl5262r35hdfd78af_0
cwlVersion: v1.1
baseCommand:
- agat_sp_filter_gene_by_intron_numbers.pl
