class: CommandLineTool
id: gotree_reformat.cwl
inputs:
- id: in_input
  doc: Input tree (default "stdin")
  type: string?
  inputBinding:
    prefix: --input
- id: in_input_format
  doc: Input tree format (newick, nexus, or phyloxml), alias to --format (default
    "newick")
  type: string?
  inputBinding:
    prefix: --input-format
- id: in_output
  doc: Output file (default "stdout")
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
- id: in_newick
  doc: Reformats an input tree file into Newick format
  type: string
  inputBinding:
    position: 0
- id: in_nexus
  doc: Reformats an input tree file into Nexus format
  type: string
  inputBinding:
    position: 1
- id: in_phylo_xml
  doc: Reformats an input tree file into PhyloXML format
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file (default "stdout")
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gotree:0.4.1--h375a9b1_0
cwlVersion: v1.1
baseCommand:
- gotree
- reformat
