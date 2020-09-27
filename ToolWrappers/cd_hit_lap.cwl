class: CommandLineTool
id: cd_hit_lap.cwl
inputs:
- id: in_input_file
  doc: Input file;
  type: boolean
  inputBinding:
    prefix: -i
- id: in_output_file
  doc: Output file;
  type: File
  inputBinding:
    prefix: -o
- id: in_minimum_length_overlapping
  doc: Minimum length of overlapping part (default 20);
  type: boolean
  inputBinding:
    prefix: -m
- id: in_minimum_percentage_overlapping
  doc: Minimum percentage of overlapping part (default 0, any percentage);
  type: boolean
  inputBinding:
    prefix: -p
- id: in_description_length_default
  doc: Description length (default 0, truncate at the first whitespace character)
  type: boolean
  inputBinding:
    prefix: -d
- id: in_random_number_seed
  doc: Random number seed for shuffling (default 0, no shuffling; shuffled before
    sorting by length);
  type: boolean
  inputBinding:
    prefix: -s
- id: in_stdout
  doc: Standard output type (default "log", other options "rep", "clstr");
  type: boolean
  inputBinding:
    prefix: -stdout
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: Output file;
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- cd-hit-lap
