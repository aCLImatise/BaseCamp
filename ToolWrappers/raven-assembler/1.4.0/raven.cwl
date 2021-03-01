class: CommandLineTool
id: raven.cwl
inputs:
- id: in_weaken
  doc: use larger (k, w) when assembling highly accurate sequences
  type: boolean?
  inputBinding:
    prefix: --weaken
- id: in_polishing_rounds
  doc: "default: 2\nnumber of times racon is invoked"
  type: long?
  inputBinding:
    prefix: --polishing-rounds
- id: in_match
  doc: "default: 3\nscore for matching bases"
  type: long?
  inputBinding:
    prefix: --match
- id: in_mismatch
  doc: "default: -5\nscore for mismatching bases"
  type: long?
  inputBinding:
    prefix: --mismatch
- id: in_gap
  doc: "default: -4\ngap penalty (must be negative)"
  type: long?
  inputBinding:
    prefix: --gap
- id: in_graphical_fragment_assembly
  doc: prints the assembly graph in GFA format
  type: string?
  inputBinding:
    prefix: --graphical-fragment-assembly
- id: in_resume
  doc: resume previous run from last checkpoint
  type: boolean?
  inputBinding:
    prefix: --resume
- id: in_disable_checkpoints
  doc: disable checkpoint file creation
  type: boolean?
  inputBinding:
    prefix: --disable-checkpoints
- id: in_threads
  doc: "default: 1\nnumber of threads"
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/raven-assembler:1.4.0--h8b12597_0
cwlVersion: v1.1
baseCommand:
- raven
