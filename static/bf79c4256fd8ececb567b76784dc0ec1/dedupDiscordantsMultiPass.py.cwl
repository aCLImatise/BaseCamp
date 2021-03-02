class: CommandLineTool
id: dedupDiscordantsMultiPass.py.cwl
inputs:
- id: in_bedpe_input_file
  doc: BEDPE input file
  type: File?
  inputBinding:
    prefix: -i
- id: in_amount_slop_bp
  doc: The amount of slop, in bp, allowed for duplicates to be marked
  type: long?
  inputBinding:
    prefix: -s
- id: in_maximum_number_mapping
  doc: "The maximum number of mapping combinations allowed before a\nduplicate ID\
    \ has _all_ of its mappings removed"
  type: long?
  inputBinding:
    prefix: -m
- id: in_mem
  doc: "The amount of memory to use for UNIX sort.  Default = 2G.  See\n\"man sort\"\
    \ for valid values."
  type: long?
  inputBinding:
    prefix: --mem
- id: in_dedup__
  doc: "Dedup if __either__ end shares a start position (within slop)\nin common.\n"
  type: boolean?
  inputBinding:
    prefix: -e
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hydra-multi:0.5.4--py27h8b12597_0
cwlVersion: v1.1
baseCommand:
- dedupDiscordantsMultiPass.py
