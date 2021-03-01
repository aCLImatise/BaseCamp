class: CommandLineTool
id: GCContent.cwl
inputs:
- id: in_input
  doc: Input file(s) in fasta format.
  type: File?
  inputBinding:
    prefix: --input
- id: in_ot_put_prefix
  doc: Prefix of output files.[required]
  type: string?
  inputBinding:
    prefix: --otput_prefix
- id: in_mode
  doc: "The type of GC content you want to statistic. Either\nthe normal type or GC\
    \ content from each reading frame.\n[normal or frames]. defaul=normal\n"
  type: string?
  inputBinding:
    prefix: --mode
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ribominer:0.2.3.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- GCContent
