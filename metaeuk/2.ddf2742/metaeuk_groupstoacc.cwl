class: CommandLineTool
id: metaeuk_groupstoacc.cwl
inputs:
- id: threads
  doc: Number of CPU-cores used (all by default) [8]
  type: long
  inputBinding:
    prefix: --threads
- id: v
  doc: 'Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]'
  type: long
  inputBinding:
    prefix: -v
- id: levy
  doc: 'E, Mirdita M, Soeding J: MetaEuk – sensitive, high-throughput gene discovery
    and annotation for large-scale eukaryotic metagenomics. biorxiv, 851964 (2019).'
  type: string
  inputBinding:
    prefix: '- Levy'
outputs: []
cwlVersion: v1.1
baseCommand:
- metaeuk
- groupstoacc
