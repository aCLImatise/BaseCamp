class: CommandLineTool
id: mmseqs_concatdbs.cwl
inputs:
- id: in_preserve_keys
  doc: The keys of the two DB should be distinct, and they will be preserved in the
    concatenation [0]
  type: boolean?
  inputBinding:
    prefix: --preserve-keys
- id: in_take_larger_entry
  doc: Only keep the larger entry (dataSize >) in the concatenation, both databases
    need the same keys in the index [0]
  type: boolean?
  inputBinding:
    prefix: --take-larger-entry
- id: in_compressed
  doc: Write compressed output [0]
  type: long?
  inputBinding:
    prefix: --compressed
- id: in_threads
  doc: Number of CPU-cores used (all by default) [1]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_verbosity_level_errors
  doc: 'Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]'
  type: long?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0
cwlVersion: v1.1
baseCommand:
- mmseqs
- concatdbs
