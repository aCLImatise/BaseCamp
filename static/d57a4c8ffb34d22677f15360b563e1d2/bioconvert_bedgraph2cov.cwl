class: CommandLineTool
id: bioconvert_bedgraph2cov.cwl
inputs:
- id: in_force
  doc: "if outfile exists, it is overwritten with this option\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_verbosity
  doc: 'Set the outpout verbosity. (default: ERROR)'
  type: string?
  inputBinding:
    prefix: --verbosity
- id: in_raise_exception
  doc: "Let exception ending the execution be raised and\ndisplayed (default: False)"
  type: boolean?
  inputBinding:
    prefix: --raise-exception
- id: in_batch
  doc: "Allow conversion of a set of files using wildcards.\nYou must use quotes to\
    \ escape the wildcards. For\ninstance: --batch 'test*fastq' (default: False)"
  type: boolean?
  inputBinding:
    prefix: --batch
- id: in_benchmark
  doc: 'Running all available methods (default: False)'
  type: boolean?
  inputBinding:
    prefix: --benchmark
- id: in_benchmark_n
  doc: 'Number of trials for each methods (default: 5)'
  type: long?
  inputBinding:
    prefix: --benchmark-N
- id: in_benchmark_methods
  doc: 'Methods to include (default: all)'
  type: string[]
  inputBinding:
    prefix: --benchmark-methods
- id: in_allow_indirect_conversion
  doc: "Allow to chain converter when direct conversion is\nabsent (default: False)"
  type: boolean?
  inputBinding:
    prefix: --allow-indirect-conversion
- id: in_extra_arguments
  doc: "Any arguments accepted by the method's tool (default:\n)"
  type: string?
  inputBinding:
    prefix: --extra-arguments
- id: in_method_use_do
  doc: "[{python}], --method [{python}]\nThe method to use to do the conversion. (default:\n\
    python)"
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_show_methods
  doc: 'A converter may have several methods (default: False)'
  type: boolean?
  inputBinding:
    prefix: --show-methods
- id: in_input_file
  doc: 'The path to the file to convert. (default: None)'
  type: string
  inputBinding:
    position: 0
- id: in_output_file
  doc: "The path where the result will be stored. (default:\nNone)"
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bioconvert
- bedgraph2cov
