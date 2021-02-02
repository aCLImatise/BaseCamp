class: CommandLineTool
id: phizz_query.cwl
inputs:
- id: in_config
  doc: "-h, --hpo_term TEXT     Specify a hpo term\n-m, --mim_term TEXT     Specify\
    \ a omim id\n-o, --outfile FILENAME  Specify path to outfile\n-j, --to_json  \
    \         If output should be in json format\n--chrom TEXT            The chromosome\n\
    --start INTEGER\n--stop INTEGER\n--help                  Show this message and\
    \ exit.\n"
  type: File
  inputBinding:
    prefix: --config
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phizz
- query
