class: CommandLineTool
id: SOAPdenovo_Trans_127mer_map.cwl
inputs:
- id: in_string_configfile_file
  doc: '<string>        configFile: the config file of reads'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_string_inputgraph_prefix
  doc: '<string>        inputGraph: prefix of input graph file name'
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_optional_output_gap
  doc: (optional)      output gap related reads for SRkgf to fill gap, [NO]
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_optional_output_assembly
  doc: (optional)      output assembly RPKM statistics, [NO]
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_int_ncpu_number
  doc: '<int>           n_cpu: number of cpu for use, [8]'
  type: boolean?
  inputBinding:
    prefix: -p
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- SOAPdenovo-Trans-127mer
- map
