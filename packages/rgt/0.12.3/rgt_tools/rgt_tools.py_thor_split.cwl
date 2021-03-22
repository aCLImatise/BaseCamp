class: CommandLineTool
id: rgt_tools.py_thor_split.cwl
inputs:
- id: in_input_bed_file
  doc: Input BED file
  type: File?
  inputBinding:
    prefix: -i
- id: in_output_directory
  doc: Output directory.
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_define_cutoff_pvalue
  doc: Define the cut-off of p-value (-log10) for filtering.
  type: long?
  inputBinding:
    prefix: -p
- id: in_fc
  doc: Define the cut-off of foldchange for filtering.
  type: string?
  inputBinding:
    prefix: -fc
- id: in_rename
  doc: Rename the peak names by associated genes.
  type: boolean?
  inputBinding:
    prefix: --rename
- id: in_define_the_genome
  doc: Define the genome
  type: string?
  inputBinding:
    prefix: -g
- id: in_define_maximum_distance
  doc: Define the maximum distance for merging the nearby regions
  type: string?
  inputBinding:
    prefix: -m
- id: in_define_bin_size
  doc: Define the bin size
  type: long?
  inputBinding:
    prefix: -b
- id: in_define_step_size
  doc: Define the step size
  type: long?
  inputBinding:
    prefix: -s
- id: in_dnc
  doc: Define the cutoff of the difference of norm. read counts
  type: string?
  inputBinding:
    prefix: -dnc
- id: in_snc
  doc: Define the cutoff of the sum of norm. read counts
  type: string?
  inputBinding:
    prefix: -snc
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: Output directory.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints: []
cwlVersion: v1.1
baseCommand:
- rgt-tools.py
- thor_split
