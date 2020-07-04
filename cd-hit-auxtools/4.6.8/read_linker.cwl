class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/read_linker.cwl
inputs:
- id: input_file_first
  doc: Input file, first end;
  type: File
  inputBinding:
    prefix: '-1'
- id: input_file_end
  doc: Input file, second end;
  type: File
  inputBinding:
    prefix: '-2'
- id: output_file
  doc: Output file;
  type: File
  inputBinding:
    prefix: -o
- id: minimum_overlapping_length
  doc: Minimum overlapping length (default 10);
  type: string
  inputBinding:
    prefix: -l
- id: maximum_number_errors
  doc: Maximum number of errors (mismatches, default 1);
  type: string
  inputBinding:
    prefix: -e
outputs: []
cwlVersion: v1.1
baseCommand:
- read-linker
