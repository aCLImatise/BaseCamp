class: CommandLineTool
id: filter_gff_cov.cwl
inputs:
- id: in_verbose
  doc: "-f, --reference FILENAME  Reference FASTA file for the GFF  [required]\n-s,\
    \ --strand-specific     If the coverage must be calculated on each strand\n-t,\
    \ --sorted              Assumes the GFF to be correctly sorted\n-c, --min-coverage\
    \ FLOAT  Minimum coverage for the contig/strand\n-r, --rename              Emulates\
    \ BLAST in reading the FASTA file (keeps\nonly the header before the first space)\n\
    --progress                Shows Progress Bar\n--help                    Show this\
    \ message and exit.\n"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- filter-gff
- cov
