class: CommandLineTool
id: mimodd_rebase.cwl
inputs:
- id: input_file
  doc: the VCF file to rebase
  type: string
  inputBinding:
    position: 0
- id: chain_file
  doc: the UCSC chain file to calculate new coordinates from (the file may be gzipped
    or uncompressed)
  type: string
  inputBinding:
    position: 1
- id: ofile
  doc: 'redirect the output to the specified file (default: stdout)'
  type: string
  inputBinding:
    prefix: --ofile
- id: reverse
  doc: swap the genome versions specified in the chain file, i.e., assume the coordinates
    in the input file are based on the chain file target genome version and should
    be mapped to the source genome version
  type: boolean
  inputBinding:
    prefix: --reverse
- id: filter
  doc: 'define which mapped variants to report: "unique": report only unambiguously
    mapped variants, "best": for ambiguously mapping variants, report the mapping
    with the highest score, "all": for ambiguously mapping variants, report all mappings
    (default: unique)'
  type: string
  inputBinding:
    prefix: --filter
- id: verbose
  doc: report remap statistics
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- mimodd
- rebase
