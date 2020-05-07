class: CommandLineTool
id: bioconvert_tsv2csv.cwl
inputs:
- id: input_file
  doc: 'The path to the file to convert. (default: None)'
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: 'The path where the result will be stored. (default: None)'
  type: string
  inputBinding:
    position: 1
- id: force
  doc: 'if outfile exists, it is overwritten with this option (default: False)'
  type: boolean
  inputBinding:
    prefix: --force
- id: verbosity
  doc: 'Set the outpout verbosity. (default: ERROR)'
  type: string
  inputBinding:
    prefix: --verbosity
- id: raise_exception
  doc: 'Let exception ending the execution be raised and displayed (default: False)'
  type: boolean
  inputBinding:
    prefix: --raise-exception
- id: batch
  doc: "Allow conversion of a set of files using wildcards. You must use quotes to\
    \ escape the wildcards. For instance: --batch 'test*fastq' (default: False)"
  type: boolean
  inputBinding:
    prefix: --batch
- id: benchmark
  doc: 'Running all available methods (default: False)'
  type: boolean
  inputBinding:
    prefix: --benchmark
- id: benchmark_n
  doc: 'Number of trials for each methods (default: 5)'
  type: string
  inputBinding:
    prefix: --benchmark-N
- id: benchmark_methods
  doc: 'Methods to include (default: all)'
  type: string[]
  inputBinding:
    prefix: --benchmark-methods
- id: allow_indirect_conversion
  doc: 'Allow to chain converter when direct conversion is absent (default: False)'
  type: boolean
  inputBinding:
    prefix: --allow-indirect-conversion
- id: extra_arguments
  doc: "Any arguments accepted by the method's tool (default: )"
  type: string
  inputBinding:
    prefix: --extra-arguments
- id: m
  doc: '[{pandas,python,python_v2}], --method [{pandas,python,python_v2}] The method
    to use to do the conversion. (default: python)'
  type: boolean
  inputBinding:
    prefix: -m
- id: show_methods
  doc: 'A converter may have several methods (default: False)'
  type: boolean
  inputBinding:
    prefix: --show-methods
- id: in_sep
  doc: 'The separator used in the input file (default: )'
  type: string
  inputBinding:
    prefix: --in-sep
- id: out_sep
  doc: 'The separator used in the output file (default: ,)'
  type: string
  inputBinding:
    prefix: --out-sep
- id: line_terminator
  doc: 'The line terminator used in the output file (default: )'
  type: string
  inputBinding:
    prefix: --line-terminator
outputs: []
cwlVersion: v1.1
baseCommand:
- bioconvert
- tsv2csv
