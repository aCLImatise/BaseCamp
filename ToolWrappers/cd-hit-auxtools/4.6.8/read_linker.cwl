class: CommandLineTool
id: read_linker.cwl
inputs:
- id: in_input_file_first_end
  doc: Input file, first end;
  type: File?
  inputBinding:
    prefix: '-1'
- id: in_input_file_second_end
  doc: Input file, second end;
  type: File?
  inputBinding:
    prefix: '-2'
- id: in_output_file
  doc: Output file;
  type: File?
  inputBinding:
    prefix: -o
- id: in_minimum_overlapping_length
  doc: Minimum overlapping length (default 10);
  type: long?
  inputBinding:
    prefix: -l
- id: in_maximum_number_errors
  doc: Maximum number of errors (mismatches, default 1);
  type: long?
  inputBinding:
    prefix: -e
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: Output file;
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- read-linker
