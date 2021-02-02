class: CommandLineTool
id: run_MaxBin.pl.cwl
inputs:
- id: in_out
  doc: (output file)
  type: File
  inputBinding:
    prefix: -out
- id: in_run_max_bin_do_tpl
  doc: -contig (contig file)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: (output file)
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- run_MaxBin.pl
