class: CommandLineTool
id: cd_hit_dup.cwl
inputs:
- id: in_input_file_fastq
  doc: Input file (FASTQ or FASTA);
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_i_two
  doc: Second input file (FASTQ or FASTA);
  type: boolean?
  inputBinding:
    prefix: -i2
- id: in_output_file
  doc: Output file;
  type: File?
  inputBinding:
    prefix: -o
- id: in_o_two
  doc: Output file for R2;
  type: File?
  inputBinding:
    prefix: -o2
- id: in_description_length_default
  doc: Description length (default 0, truncate at the first whitespace character)
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_length_prefix_used
  doc: Length of prefix to be used in the analysis (default 0, for full/maximum length);
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_match_length_truefalse
  doc: Match length (true/false, default true);
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_maximum_number_allowd
  doc: Maximum number of mismatches allowd;
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_filter_chimeric_clusters
  doc: Filter out chimeric clusters (true/false, default false);
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_minimum_length_common
  doc: "Minimum length of common sequence shared between a chimeric read\nand each\
    \ of its parents (default 30, minimum 20);"
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_abundance_cutoff_default
  doc: Abundance cutoff (default 1 without chimeric filtering, 2 with chimeric filtering);
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_abundance_ratio_parent
  doc: Abundance ratio between a parent read and chimeric read (default 1);
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_dissimilarity_control_chimeric
  doc: Dissimilarity control for chimeric filtering (default 1);
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_other
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: Output file;
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
- id: out_o_two
  doc: Output file for R2;
  type: File?
  outputBinding:
    glob: $(inputs.in_o_two)
hints: []
cwlVersion: v1.1
baseCommand:
- cd-hit-dup
