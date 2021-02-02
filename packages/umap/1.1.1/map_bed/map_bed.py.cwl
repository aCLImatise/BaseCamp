class: CommandLineTool
id: map_bed.py.cwl
inputs:
- id: in_wig_dir
  doc: use a faster algorithm.
  type: string
  inputBinding:
    prefix: -wigdir
- id: in_single_nucleotide
  doc: "If specified, assumes each region is only one nucleotide.\nYou must specify\
    \ -wig as well."
  type: boolean
  inputBinding:
    prefix: -SingleNucleotide
- id: in_bed_path
  doc: Path to gzipped bed file
  type: string
  inputBinding:
    position: 0
- id: in_out_path
  doc: Path to gzipped output file
  type: string
  inputBinding:
    position: 1
- id: in_u_map_dir
  doc: Path to directory with uint8 binary files produced by
  type: string
  inputBinding:
    position: 2
- id: in_u_map_slash_bis_map_dot
  doc: kmer               The read length for defining single-read and multi-read
  type: string
  inputBinding:
    position: 3
- id: in_mapp_ability_dot
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- map_bed.py
