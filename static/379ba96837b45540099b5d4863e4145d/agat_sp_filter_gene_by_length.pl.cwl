class: CommandLineTool
id: agat_sp_filter_gene_by_length.pl.cwl
inputs:
- id: in_select_genes_longer
  doc: 'Select genes longer than 200bp:'
  type: long?
  inputBinding:
    prefix: -o
- id: in_ref_file
  doc: Input GFF3 file that will be read
  type: File?
  inputBinding:
    prefix: --reffile
- id: in_size
  doc: Integer - Gene size in pb [Default 100]
  type: long?
  inputBinding:
    prefix: --size
- id: in_test
  doc: "Test to apply (>, <, =, >= or <=). If you use one of these two\ncharacters\
    \ >, <, please do not forget to quote your parameter\nlike that \"<=\". Else your\
    \ terminal will complain. [Default \"=\"]"
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
- id: in_agat_sp_filter_gene_by_length_do_tpl
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
- agat_sp_filter_gene_by_length.pl
