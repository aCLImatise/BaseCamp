class: CommandLineTool
id: transposcope_align.cwl
inputs:
- id: index
  doc: The path to the index file which describes the coordinates of insertion sites
  type: string
  inputBinding:
    position: 0
- id: bam
  doc: path to bam file
  type: string
  inputBinding:
    position: 1
- id: me_reference
  doc: path to the mobile element's FASTA file
  type: string
  inputBinding:
    position: 2
- id: host_reference
  doc: path to a folder containing all of the chromosome FASTA files for the host
    genome
  type: string
  inputBinding:
    position: 3
- id: sample_id
  doc: Unique name to for the given experiment. This is used to label the output.
  type: string
  inputBinding:
    position: 4
- id: genes
  doc: Path to refFlat.txt (If information regarding the nearest gene should be included.)
  type: string
  inputBinding:
    prefix: --genes
- id: group_1
  doc: 'First level group tag (default: ungrouped)'
  type: string
  inputBinding:
    prefix: --group1
- id: group_2
  doc: 'Second level group tag (default: ungrouped)'
  type: string
  inputBinding:
    prefix: --group2
- id: keep_files
  doc: 'Flag which determines whether intermediate bam files and fasta files are deleted
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --keep_files
outputs: []
cwlVersion: v1.1
baseCommand:
- transposcope
- align
