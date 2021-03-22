class: CommandLineTool
id: MirMachine.py.cwl
inputs:
- id: in_node
  doc: Node name. (e.g. Caenorhabditis)
  type: string?
  inputBinding:
    prefix: --node
- id: in_species
  doc: Species name. (e.g. Caenorhabditis_elegans)
  type: string?
  inputBinding:
    prefix: --species
- id: in_genome
  doc: Genome fasta file location (e.g. data/genome/example.fasta)
  type: File?
  inputBinding:
    prefix: --genome
- id: in_model
  doc: 'Model type: deutero, proto, combined [default: proto]'
  type: string?
  inputBinding:
    prefix: --model
- id: in_family
  doc: Run only a single miRNA family.
  type: string?
  inputBinding:
    prefix: --family
- id: in_cpu
  doc: 'CPUs. [default: 2]'
  type: long?
  inputBinding:
    prefix: --cpu
- id: in_add_all_nodes
  doc: Move on the tree both ways.
  type: boolean?
  inputBinding:
    prefix: --add-all-nodes
- id: in_single_node_only
  doc: Run only the given node.
  type: boolean?
  inputBinding:
    prefix: --single-node-only
- id: in_dry
  doc: Dry run.
  type: boolean?
  inputBinding:
    prefix: --dry
- id: in_print_all_nodes
  doc: Print all available nodes and exit.
  type: boolean?
  inputBinding:
    prefix: --print-all-nodes
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mirmachine:0.1.31--py_0
cwlVersion: v1.1
baseCommand:
- MirMachine.py
