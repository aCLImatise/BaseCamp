class: CommandLineTool
id: extract_snvs_metaalign.pl.cwl
inputs:
- id: in_input
  doc: ":  Input file (snv_align-positions.tsv generated by snv pipeline)\n-o|--output:\
    \  Output file name.\n-r|--include-reference: Include reference in set of SNVs.\n\
    -s|--strain:  Strain name.\n-v|--verbose\n"
  type: boolean
  inputBinding:
    prefix: --input
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- extract_snvs_metaalign.pl