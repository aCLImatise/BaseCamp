class: CommandLineTool
id: map_bed.py.cwl
inputs:
- id: bed_path
  doc: Path to gzipped bed file
  type: string
  inputBinding:
    position: 0
- id: out_path
  doc: Path to gzipped output file
  type: string
  inputBinding:
    position: 1
- id: u_map_dir
  doc: Path to directory with uint8 binary files produced by Umap/Bismap.
  type: string
  inputBinding:
    position: 2
- id: km_er
  doc: The read length for defining single-read and multi-read mappability.
  type: string
  inputBinding:
    position: 3
- id: single_nucleotide
  doc: If specified, assumes each region is only one nucleotide. You must specify
    -wig as well.
  type: boolean
  inputBinding:
    prefix: -SingleNucleotide
- id: wig_dir
  doc: Path to directory with <chrom>.<kmer>.MultiReadMappability.wg.gz files.
  type: string
  inputBinding:
    prefix: -wigdir
outputs: []
cwlVersion: v1.1
baseCommand:
- map_bed.py
