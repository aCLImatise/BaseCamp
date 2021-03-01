class: CommandLineTool
id: overlay_bigwig.py.cwl
inputs:
- id: in_bw_file_one
  doc: One BigWig file.
  type: long?
  inputBinding:
    prefix: --bwfile1
- id: in_bw_file_two
  doc: "Another BigWig file. Both BigWig files should use the\nsame reference genome."
  type: long?
  inputBinding:
    prefix: --bwfile2
- id: in_action
  doc: "After pairwise align two bigwig files, perform the\nfollow actions (Only select\
    \ one keyword):\"Add\" = add\nsignals. \"Average\" = average signals. \"Division\"\
    =\ndivide bigwig2 from bigwig1. Add 1 to both bigwig.\n\"Max\" = pick the signal\
    \ that is larger. \"Min\" = pick\nthe signal that is smaller. \"Product\" = multiply\n\
    signals. \"Subtract\" = subtract signals in 2nd bigwig\nfile from the corresponiding\
    \ ones in the 1st bigwig\nfile. \"geometricMean\" = take the geometric mean of\n\
    signals."
  type: long?
  inputBinding:
    prefix: --action
- id: in_output
  doc: Output wig file
  type: File?
  inputBinding:
    prefix: --output
- id: in_chunk
  doc: "Chromosome chunk size. Each chomosome will be cut into\nsamll chunks of this\
    \ size. Decrease chunk size will\nsave more RAM. default=100000 (bp)\n"
  type: long?
  inputBinding:
    prefix: --chunk
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output wig file
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rseqc:4.0.0--py38h0213d0e_0
cwlVersion: v1.1
baseCommand:
- overlay_bigwig.py
