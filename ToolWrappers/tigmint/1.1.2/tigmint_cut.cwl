class: CommandLineTool
id: tigmint_cut.cwl
inputs:
- id: in_fast_a_out
  doc: The output FASTA file.
  type: File
  inputBinding:
    prefix: --fastaout
- id: in_bed_out
  doc: "The output BED file. Default is the output FASTA\nfilename plus .bed"
  type: File
  inputBinding:
    prefix: --bedout
- id: in_processes
  doc: Number of parallel processes to launch [8]
  type: long
  inputBinding:
    prefix: --processes
- id: in_window
  doc: "Window size used to check for spanning molecules (bp)\n[1000]"
  type: long
  inputBinding:
    prefix: --window
- id: in_spanning
  doc: "Spanning molecules threshold (no misassembly in window\nif num. spanning molecules\
    \ >= n [2])"
  type: long
  inputBinding:
    prefix: --spanning
- id: in_trim
  doc: Number of base pairs to trim at contig cuts (bp) [0]
  type: long
  inputBinding:
    prefix: --trim
- id: in_fast_a
  doc: "Reference genome fasta file (must have FAI index\ngenerated)"
  type: string
  inputBinding:
    position: 0
- id: in_bed
  doc: Sorted bed file of molecule extents
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_fast_a_out
  doc: The output FASTA file.
  type: File
  outputBinding:
    glob: $(inputs.in_fast_a_out)
- id: out_bed_out
  doc: "The output BED file. Default is the output FASTA\nfilename plus .bed"
  type: File
  outputBinding:
    glob: $(inputs.in_bed_out)
cwlVersion: v1.1
baseCommand:
- tigmint-cut
