class: CommandLineTool
id: cgwDump.cwl
inputs:
- id: in_mandatory_path_gkpstore
  doc: mandatory path to the gkpStore
  type: File?
  inputBinding:
    prefix: -g
- id: in_version_mandatory_path_tigstore_version
  doc: version     mandatory path to the tigStore and version
  type: File?
  inputBinding:
    prefix: -t
- id: in_version_mandatory_path_checkpoint_version
  doc: version   mandatory path to a checkpoint and version
  type: File?
  inputBinding:
    prefix: -c
- id: in_output_written_prefixposmapfrgscf
  doc: "output is written to files starting with 'prefix'\n(e.g., prefix.ctg.fasta)\n\
    (e.g., prefix.posmap.frgscf)"
  type: string?
  inputBinding:
    prefix: -o
- id: in_all
  doc: dump all data for all object types
  type: boolean?
  inputBinding:
    prefix: -all
- id: in_reads
  doc: dumps reads
  type: boolean?
  inputBinding:
    prefix: -reads
- id: in_unit_igs
  doc: dumps unitigs
  type: boolean?
  inputBinding:
    prefix: -unitigs
- id: in_contigs
  doc: dumps contigs
  type: boolean?
  inputBinding:
    prefix: -contigs
- id: in_scaffolds
  doc: dumps scaffolds
  type: boolean?
  inputBinding:
    prefix: -scaffolds
- id: in_dumps_objects_endiid
  doc: dumps objects bgnIID <= IID <= endIID
  type: string?
  inputBinding:
    prefix: -b
- id: in_dumps_specific_multiple
  doc: dumps a specific object (multiple -i allowed)
  type: string?
  inputBinding:
    prefix: -e
- id: in_consensus
  doc: dumps consensus sequence
  type: boolean?
  inputBinding:
    prefix: -consensus
- id: in_layout
  doc: dumps posmap layout of component objects
  type: boolean?
  inputBinding:
    prefix: -layout
- id: in_edges
  doc: dumps unused mate edges involving selected objects
  type: boolean?
  inputBinding:
    prefix: -edges
- id: in_label_tig_s
  doc: assign labels to unitigs/contigs
  type: boolean?
  inputBinding:
    prefix: -labeltigs
- id: in_label_reads
  doc: assign labels to mate pairs
  type: boolean?
  inputBinding:
    prefix: -labelreads
- id: in_version
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_action
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cgwDump
