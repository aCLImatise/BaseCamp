class: CommandLineTool
id: metagraph_DNA_assemble.cwl
inputs:
- id: in_prune_tips
  doc: '[INT]   prune all dead ends of this length and shorter [0]'
  type: boolean?
  inputBinding:
    prefix: --prune-tips
- id: in_unit_igs
  doc: extract unitigs [off]
  type: boolean?
  inputBinding:
    prefix: --unitigs
- id: in_enumerate
  doc: enumerate sequences assembled and dumped to FASTA [off]
  type: boolean?
  inputBinding:
    prefix: --enumerate
- id: in_primary_km_ers
  doc: output each k-mer only in one if its forms (canonical/non-canonical) [off]
  type: boolean?
  inputBinding:
    prefix: --primary-kmers
- id: in_to_gfa
  doc: dump graph layout to GFA [off]
  type: boolean?
  inputBinding:
    prefix: --to-gfa
- id: in_compacted
  doc: dump compacted de Bruijn graph to GFA [off]
  type: boolean?
  inputBinding:
    prefix: --compacted
- id: in_header
  doc: '[STR]       header for sequences in FASTA output []'
  type: boolean?
  inputBinding:
    prefix: --header
- id: in_parallel
  doc: '[INT]     use multiple threads for computation [1]'
  type: boolean?
  inputBinding:
    prefix: --parallel
- id: in_annotator
  doc: '[STR]                    annotator to load []'
  type: boolean?
  inputBinding:
    prefix: --annotator
- id: in_label_mask_in
  doc: '[STR]                label to include in masked graph'
  type: boolean?
  inputBinding:
    prefix: --label-mask-in
- id: in_label_mask_out
  doc: '[STR]               label to exclude from masked graph'
  type: boolean?
  inputBinding:
    prefix: --label-mask-out
- id: in_label_mask_in_fraction
  doc: '[FLOAT]     minimum fraction of mask-in labels among the set of masked labels
    [1.0]'
  type: boolean?
  inputBinding:
    prefix: --label-mask-in-fraction
- id: in_label_mask_out_fraction
  doc: '[FLOAT]    maximum fraction of mask-out labels among the set of masked labels
    [0.0]'
  type: boolean?
  inputBinding:
    prefix: --label-mask-out-fraction
- id: in_label_other_fraction
  doc: '[FLOAT]       maximum fraction of other labels allowed [1.0]'
  type: boolean?
  inputBinding:
    prefix: --label-other-fraction
- id: in_filter_by_km_er
  doc: mask out graph k-mers individually [off]
  type: boolean?
  inputBinding:
    prefix: --filter-by-kmer
- id: in_verbose
  doc: switch on verbose output [off]
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_graph
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/metagraph:0.2.0--h74b8f77_0
cwlVersion: v1.1
baseCommand:
- metagraph_DNA
- assemble
