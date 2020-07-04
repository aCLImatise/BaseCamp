class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/normalize_bigwig.py.cwl
inputs:
- id: bw_file
  doc: Input BigWig file. [required]
  type: string
  inputBinding:
    prefix: --bwfile
- id: output
  doc: Output wig file. [required]
  type: string
  inputBinding:
    prefix: --output
- id: wig_sum
  doc: Specified wigsum. 100000000 equals to coverage of 1 million 100nt reads. default=100000000  [optional]
  type: string
  inputBinding:
    prefix: --wigsum
- id: ref_gene
  doc: Reference gene model in bed format. [optional]
  type: string
  inputBinding:
    prefix: --refgene
- id: chunk
  doc: Chromosome chunk size. Each chomosome will be cut into samll chunks of this
    size. Decrease chunk size will save more RAM. default=500000 (bp) [optional]
  type: string
  inputBinding:
    prefix: --chunk
- id: format
  doc: Output format. either "wig" or "bgr". "bgr" save disk space but make program
    slower. default=bgr
  type: string
  inputBinding:
    prefix: --format
outputs: []
cwlVersion: v1.1
baseCommand:
- normalize_bigwig.py
