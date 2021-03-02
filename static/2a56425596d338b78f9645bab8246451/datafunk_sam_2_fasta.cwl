class: CommandLineTool
id: datafunk_sam_2_fasta.cwl
inputs:
- id: in_output_fast_a
  doc: "FASTA format file to write. Prints to stdout if not\nspecified"
  type: File?
  inputBinding:
    prefix: --output-fasta
- id: in_trim_alignment_basedhalfopen
  doc: "[[start]:[end]], --trim [[start]:[end]]\ntrim the alignment to these coordinates\
    \ (0-based,\nhalf-open)"
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_pad
  doc: "if --trim, pad trimmed ends with Ns, to retain\nreference length"
  type: boolean?
  inputBinding:
    prefix: --pad
- id: in_prefix_ref
  doc: write the reference sequence at the beginning of the
  type: boolean?
  inputBinding:
    prefix: --prefix-ref
- id: in_log_all_inserts
  doc: "log all (including singleton) insertions relative to\nthe reference"
  type: boolean?
  inputBinding:
    prefix: --log-all-inserts
- id: in_log_deletions
  doc: log non-singleton deletions relative to the reference
  type: boolean?
  inputBinding:
    prefix: --log-deletions
- id: in_log_all_deletions
  doc: "log all (including singleton) deletions relative to\nthe reference"
  type: boolean?
  inputBinding:
    prefix: --log-all-deletions
- id: in_stdout
  doc: "Overides -o/--output-fasta if present and prints\noutput to stdout\n"
  type: boolean?
  inputBinding:
    prefix: --stdout
- id: in_r
  doc: ''
  type: string?
  inputBinding:
    prefix: -r
- id: in_s
  doc: ''
  type: string?
  inputBinding:
    prefix: -s
- id: in_sam_file
  doc: -r reference.fasta, --reference reference.fasta
  type: string
  inputBinding:
    position: 0
- id: in_reference
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 1
- id: in_file
  doc: --log-inserts         log non-singleton insertions relative to the reference
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- datafunk
- sam_2_fasta
