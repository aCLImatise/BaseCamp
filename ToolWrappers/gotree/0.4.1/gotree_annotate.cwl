class: CommandLineTool
id: gotree_annotate.cwl
inputs:
- id: in_comment
  doc: Annotations are stored in Newick comment fields
  type: boolean?
  inputBinding:
    prefix: --comment
- id: in_compared
  doc: Compared tree file (default "stdin")
  type: File?
  inputBinding:
    prefix: --compared
- id: in_input
  doc: Input tree(s) file (default "stdin")
  type: File?
  inputBinding:
    prefix: --input
- id: in_map_file
  doc: Name map input file (default "none")
  type: File?
  inputBinding:
    prefix: --map-file
- id: in_output
  doc: Resolved tree(s) output file (default "stdout")
  type: File?
  inputBinding:
    prefix: --output
- id: in_format
  doc: Input tree format (newick, nexus, or phyloxml) (default "newick")
  type: string?
  inputBinding:
    prefix: --format
- id: in_seed
  doc: 'Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)'
  type: long?
  inputBinding:
    prefix: --seed
- id: in_threads
  doc: Number of threads (Max=2) (default 1)
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Resolved tree(s) output file (default "stdout")
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gotree:0.4.1--h375a9b1_0
cwlVersion: v1.1
baseCommand:
- gotree
- annotate
