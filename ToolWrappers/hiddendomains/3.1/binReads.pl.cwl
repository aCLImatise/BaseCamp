class: CommandLineTool
id: binReads.pl.cwl
inputs:
- id: in_width_bin_default
  doc: The width of the bin. Default is 1000bp.
  type: long
  inputBinding:
    prefix: -b
- id: in_input_file_bed
  doc: The input file is in BED format (the default is BAM)
  type: boolean
  inputBinding:
    prefix: -B
- id: in_minmapqthe_minimum_mapq
  doc: "MIN_MAPQ\nThe minimum MAPQ score. Default is 30."
  type: boolean
  inputBinding:
    prefix: -q
- id: in_assume_bins_mouse
  doc: Assume all bins should be on mouse chromosomes. This is the default.
  type: boolean
  inputBinding:
    prefix: -M
- id: in_assume_bins_human
  doc: Assume all bins should be on human chromosomes.
  type: boolean
  inputBinding:
    prefix: -H
- id: in_bin_reads_only
  doc: "\"chr1 chr2 ...\"\nBin reads only from specified chromosomes.\n"
  type: boolean
  inputBinding:
    prefix: -c
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- binReads.pl
