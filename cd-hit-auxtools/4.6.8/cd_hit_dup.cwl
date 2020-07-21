class: CommandLineTool
id: ../../../cd_hit_dup.cwl
inputs:
- id: input_file_fastq
  doc: Input file (FASTQ or FASTA);
  type: boolean
  inputBinding:
    prefix: -i
- id: i_two
  doc: Second input file (FASTQ or FASTA);
  type: boolean
  inputBinding:
    prefix: -i2
- id: output_file
  doc: Output file;
  type: boolean
  inputBinding:
    prefix: -o
- id: o_two
  doc: Output file for R2;
  type: boolean
  inputBinding:
    prefix: -o2
- id: description_length_default
  doc: Description length (default 0, truncate at the first whitespace character)
  type: boolean
  inputBinding:
    prefix: -d
- id: length_prefix_used
  doc: Length of prefix to be used in the analysis (default 0, for full/maximum length);
  type: boolean
  inputBinding:
    prefix: -u
- id: match_length_default
  doc: Match length (true/false, default true);
  type: boolean
  inputBinding:
    prefix: -m
- id: maximum_number_mismatches
  doc: Maximum number of mismatches allowd;
  type: boolean
  inputBinding:
    prefix: -e
- id: filter_chimeric_clusters
  doc: Filter out chimeric clusters (true/false, default false);
  type: boolean
  inputBinding:
    prefix: -f
- id: minimum_length_common
  doc: Minimum length of common sequence shared between a chimeric read and each of
    its parents (default 30, minimum 20);
  type: boolean
  inputBinding:
    prefix: -s
- id: abundance_cutoff_default
  doc: Abundance cutoff (default 1 without chimeric filtering, 2 with chimeric filtering);
  type: boolean
  inputBinding:
    prefix: -a
- id: abundance_ratio_parent
  doc: Abundance ratio between a parent read and chimeric read (default 1);
  type: boolean
  inputBinding:
    prefix: -b
- id: dissimilarity_control_chimeric
  doc: Dissimilarity control for chimeric filtering (default 1);
  type: boolean
  inputBinding:
    prefix: -p
- id: other
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- cd-hit-dup
