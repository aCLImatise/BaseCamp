class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/SOAPdenovo_Trans_31mer_scaff.cwl
inputs:
- id: string_inputgraph_prefix
  doc: '<string>        inputGraph: prefix of input graph file name'
  type: boolean
  inputBinding:
    prefix: -g
- id: optional_output_assembly
  doc: (optional) output assembly RPKM statistics, [NO]
  type: boolean
  inputBinding:
    prefix: -R
- id: optional_scaffold_structure
  doc: (optional)      scaffold structure exists, [NO]
  type: boolean
  inputBinding:
    prefix: -S
- id: optional_fill_gaps
  doc: (optional)      fill gaps in scaffolds, [NO]
  type: boolean
  inputBinding:
    prefix: -F
- id: int_ncpu_number
  doc: '<int>           n_cpu: number of cpu for use, [8]'
  type: boolean
  inputBinding:
    prefix: -p
- id: int_mincontiglen_shortest
  doc: '<int>           minContigLen: shortest contig for scaffolding, [100]'
  type: boolean
  inputBinding:
    prefix: -L
- id: int_locusmaxoutput_output
  doc: '<int>           locusMaxOutput: output the number of transcripts no more than
    locusMaxOutput in one locus, [5]'
  type: boolean
  inputBinding:
    prefix: -t
- id: int_gaplendiff_allowed
  doc: '<int>           gapLenDiff: allowed length difference between estimated and
    filled gap, [50]'
  type: boolean
  inputBinding:
    prefix: -G
outputs: []
cwlVersion: v1.1
baseCommand:
- SOAPdenovo-Trans-31mer
- scaff
