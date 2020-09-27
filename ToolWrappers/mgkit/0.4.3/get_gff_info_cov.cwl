class: CommandLineTool
id: get_gff_info_cov.cwl
inputs:
- id: in_verbose
  doc: "-f, --reference FILENAME  Reference FASTA file for the GFF  [required]\n-j,\
    \ --json-out            The output will be a JSON dictionary\n-s, --strand-specific\
    \     If the coverage must be calculated on each strand\n-r, --rename        \
    \      Emulate BLAST output (use only the header part\nbefore the first space)\n\
    --progress                Shows Progress Bar\n--help                    Show this\
    \ message and exit.\n"
  type: File
  inputBinding:
    prefix: --verbose
- id: in_gff_file
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
- id: out_verbose
  doc: "-f, --reference FILENAME  Reference FASTA file for the GFF  [required]\n-j,\
    \ --json-out            The output will be a JSON dictionary\n-s, --strand-specific\
    \     If the coverage must be calculated on each strand\n-r, --rename        \
    \      Emulate BLAST output (use only the header part\nbefore the first space)\n\
    --progress                Shows Progress Bar\n--help                    Show this\
    \ message and exit.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_verbose)
cwlVersion: v1.1
baseCommand:
- get-gff-info
- cov
