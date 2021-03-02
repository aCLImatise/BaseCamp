class: CommandLineTool
id: run_pipeline.py.cwl
inputs:
- id: in_assembly
  doc: Path to initial assembly
  type: File?
  inputBinding:
    prefix: --assembly
- id: in_length
  doc: Length of contigs at start
  type: long?
  inputBinding:
    prefix: --length
- id: in_bed
  doc: Bed file of alignments sorted by read names
  type: File?
  inputBinding:
    prefix: --bed
- id: in_output
  doc: Output directory to put results
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_cut_off
  doc: Minimum contig length to scaffold, default=1000
  type: long?
  inputBinding:
    prefix: --cutoff
- id: in_gfa
  doc: GFA file for assembly
  type: File?
  inputBinding:
    prefix: --gfa
- id: in_enzyme
  doc: Restriction Enzyme used for experiment
  type: string?
  inputBinding:
    prefix: --enzyme
- id: in_iter
  doc: Number of iterations to run, default = 3
  type: long?
  inputBinding:
    prefix: --iter
- id: in_dup
  doc: File containing duplicated contig information
  type: File?
  inputBinding:
    prefix: --dup
- id: in_exp
  doc: Expected Genome size of the assembled genome
  type: long?
  inputBinding:
    prefix: --exp
- id: in_clean
  doc: "Set this option to \"yes\" if you want to find\nmisassemblies in input assembly"
  type: string?
  inputBinding:
    prefix: --clean
- id: in_filter
  doc: Filter bed file for contigs present in the assembly
  type: File?
  inputBinding:
    prefix: --filter
- id: in_prnt
  doc: "Set this option to \"yes\" if you want to output the\nscaffolds sequence and\
    \ agp file for each iteration\n"
  type: File?
  inputBinding:
    prefix: --prnt
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output directory to put results
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_prnt
  doc: "Set this option to \"yes\" if you want to output the\nscaffolds sequence and\
    \ agp file for each iteration\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_prnt)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/salsa2:2.2--py27h78a066a_0
cwlVersion: v1.1
baseCommand:
- run_pipeline.py
