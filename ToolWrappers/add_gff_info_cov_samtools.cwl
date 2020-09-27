class: CommandLineTool
id: add_gff_info_cov_samtools.cwl
inputs:
- id: in_verbose
  doc: "-m, --average           if one or more samples are provided, the average\n\
    coverage is calculated\n-s, --samples TEXT      Sample name, will add a `sample_cov`\
    \ in the GFF\nfile. If not passed, the attribute will be `cov`\n-d, --depths TEXT\
    \       `samtools depth -aa` file  [required]\n-n, --num-seqs INTEGER  Number\
    \ of sequences to update the log. If 0, no\nmessage is logged  [default: 0]\n\
    --progress              Shows Progress Bar\n--help                  Show this\
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
- add-gff-info
- cov_samtools
