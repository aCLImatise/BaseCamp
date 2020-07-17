class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/cd_hit_lap.cwl
inputs:
- id: input_file
  doc: Input file;
  type: boolean
  inputBinding:
    prefix: -i
- id: output_file
  doc: Output file;
  type: boolean
  inputBinding:
    prefix: -o
- id: minimum_length_overlapping
  doc: Minimum length of overlapping part (default 20);
  type: boolean
  inputBinding:
    prefix: -m
- id: minimum_percentage_percentage
  doc: Minimum percentage of overlapping part (default 0, any percentage);
  type: boolean
  inputBinding:
    prefix: -p
- id: description_length_default
  doc: Description length (default 0, truncate at the first whitespace character)
  type: boolean
  inputBinding:
    prefix: -d
- id: random_number_seed
  doc: Random number seed for shuffling (default 0, no shuffling; shuffled before
    sorting by length);
  type: boolean
  inputBinding:
    prefix: -s
- id: stdout
  doc: Standard output type (default "log", other options "rep", "clstr");
  type: boolean
  inputBinding:
    prefix: -stdout
outputs: []
cwlVersion: v1.1
baseCommand:
- cd-hit-lap
