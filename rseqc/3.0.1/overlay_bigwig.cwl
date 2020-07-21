class: CommandLineTool
id: ../../../overlay_bigwig.py.cwl
inputs:
- id: bw_file_one
  doc: One BigWig file.
  type: string
  inputBinding:
    prefix: --bwfile1
- id: bw_file_two
  doc: Another BigWig file. Both BigWig files should use the same reference genome.
  type: string
  inputBinding:
    prefix: --bwfile2
- id: action
  doc: After pairwise align two bigwig files, perform the follow actions (Only select
    one keyword):"Add" = add signals. "Average" = average signals. "Division"= divide
    bigwig2 from bigwig1. Add 1 to both bigwig. "Max" = pick the signal that is larger.
    "Min" = pick the signal that is smaller. "Product" = multiply signals. "Subtract"
    = subtract signals in 2nd bigwig file from the corresponiding ones in the 1st
    bigwig file. "geometricMean" = take the geometric mean of signals.
  type: string
  inputBinding:
    prefix: --action
- id: output
  doc: Output wig file
  type: string
  inputBinding:
    prefix: --output
- id: chunk
  doc: Chromosome chunk size. Each chomosome will be cut into samll chunks of this
    size. Decrease chunk size will save more RAM. default=100000 (bp)
  type: string
  inputBinding:
    prefix: --chunk
outputs: []
cwlVersion: v1.1
baseCommand:
- overlay_bigwig.py
