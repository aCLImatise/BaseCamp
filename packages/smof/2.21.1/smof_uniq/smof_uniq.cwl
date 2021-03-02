class: CommandLineTool
id: smof_uniq.cwl
inputs:
- id: in_count
  doc: writes (count|header) in tab-delimited format
  type: boolean?
  inputBinding:
    prefix: --count
- id: in_repeated
  doc: print only repeated entries
  type: boolean?
  inputBinding:
    prefix: --repeated
- id: in_uniq
  doc: print only unique entries
  type: boolean?
  inputBinding:
    prefix: --uniq
- id: in_pack
  doc: combine redundant sequences by concatenating the
  type: boolean?
  inputBinding:
    prefix: --pack
- id: in_pack_sep
  doc: "set delimiting string for pack/unpack operations (SOH,\n0x01, by default)"
  type: string?
  inputBinding:
    prefix: --pack-sep
- id: in_first_header
  doc: "remove entries with duplicate headers (keep only the\nfirst)"
  type: boolean?
  inputBinding:
    prefix: --first-header
- id: in_removed
  doc: With -f, store removed sequences in FILE
  type: File?
  inputBinding:
    prefix: --removed
- id: in_input
  doc: input fasta sequence (default = stdin)
  type: string
  inputBinding:
    position: 0
- id: in_headers
  doc: -P, --unpack          reverse the pack operation
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/smof:2.21.1--py_0
cwlVersion: v1.1
baseCommand:
- smof
- uniq
