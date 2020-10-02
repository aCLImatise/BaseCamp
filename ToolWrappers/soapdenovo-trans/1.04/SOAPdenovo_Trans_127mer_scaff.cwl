class: CommandLineTool
id: SOAPdenovo_Trans_127mer_scaff.cwl
inputs:
- id: in_string_inputgraph_prefix
  doc: '<string>        inputGraph: prefix of input graph file name'
  type: boolean
  inputBinding:
    prefix: -g
- id: in_optional_output_assembly
  doc: (optional) output assembly RPKM statistics, [NO]
  type: boolean
  inputBinding:
    prefix: -R
- id: in_optional_scaffold_structure
  doc: (optional)      scaffold structure exists, [NO]
  type: boolean
  inputBinding:
    prefix: -S
- id: in_optional_fill_gaps
  doc: (optional)      fill gaps in scaffolds, [NO]
  type: boolean
  inputBinding:
    prefix: -F
- id: in_int_number_cpu
  doc: '<int>           n_cpu: number of cpu for use, [8]'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_int_mincontiglen_shortest
  doc: '<int>           minContigLen: shortest contig for scaffolding, [100]'
  type: boolean
  inputBinding:
    prefix: -L
- id: in_int_locusmaxoutput_output
  doc: '<int>           locusMaxOutput: output the number of transcripts no more than
    locusMaxOutput in one locus, [5]'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_int_gaplendiff_allowed
  doc: '<int>           gapLenDiff: allowed length difference between estimated and
    filled gap, [50]'
  type: boolean
  inputBinding:
    prefix: -G
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- SOAPdenovo-Trans-127mer
- scaff
