class: CommandLineTool
id: mapula_count.cwl
inputs:
- id: in_reference_files_format
  doc: '[ [ ...]]  Reference .fasta file(s). Format name=path_to_ref.'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_expected_counts_expectedcolumns
  doc: "[ [ ...]]  Expected counts CSV(s). Format name=path_to_counts. Expected\n\
    columns: reference,expected_count."
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_outputs_sam_file
  doc: "Outputs a sam file from the parsed alignments. Use - for\npiping out. (Default:\
    \ None)."
  type: File?
  inputBinding:
    prefix: -o
- id: in_sets_formats_results
  doc: "Sets the format(s) in which to output results. [Choices: csv,\njson, all]\
    \ (Default: csv)."
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_split_criteria_space
  doc: "[ ...]    Split by these criteria, space separated. [Choices: group\nrun_id\
    \ barcode read_group reference] (Default: group run_id\nbarcode)."
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_prefix_there_are
  doc: Prefix of the output files, if there are any.
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_map_ula
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outputs_sam_file
  doc: "Outputs a sam file from the parsed alignments. Use - for\npiping out. (Default:\
    \ None)."
  type: File?
  outputBinding:
    glob: $(inputs.in_outputs_sam_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mapula:1.1.0--py_0
cwlVersion: v1.1
baseCommand:
- mapula
- count
