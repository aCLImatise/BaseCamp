class: CommandLineTool
id: cd_hit_dup.cwl
inputs:
- id: i
  doc: Input file (FASTQ or FASTA);
  type: boolean
  inputBinding:
    prefix: -i
- id: i2
  doc: Second input file (FASTQ or FASTA);
  type: boolean
  inputBinding:
    prefix: -i2
- id: o
  doc: Output file;
  type: boolean
  inputBinding:
    prefix: -o
- id: o2
  doc: Output file for R2;
  type: boolean
  inputBinding:
    prefix: -o2
- id: d
  doc: Description length (default 0, truncate at the first whitespace character)
  type: boolean
  inputBinding:
    prefix: -d
- id: u
  doc: Length of prefix to be used in the analysis (default 0, for full/maximum length);
  type: boolean
  inputBinding:
    prefix: -u
- id: m
  doc: Match length (true/false, default true);
  type: boolean
  inputBinding:
    prefix: -m
- id: e
  doc: Maximum number of mismatches allowd;
  type: boolean
  inputBinding:
    prefix: -e
- id: f
  doc: Filter out chimeric clusters (true/false, default false);
  type: boolean
  inputBinding:
    prefix: -f
- id: s
  doc: Minimum length of common sequence shared between a chimeric read and each of
    its parents (default 30, minimum 20);
  type: boolean
  inputBinding:
    prefix: -s
- id: a
  doc: Abundance cutoff (default 1 without chimeric filtering, 2 with chimeric filtering);
  type: boolean
  inputBinding:
    prefix: -a
- id: b
  doc: Abundance ratio between a parent read and chimeric read (default 1);
  type: boolean
  inputBinding:
    prefix: -b
- id: p
  doc: Dissimilarity control for chimeric filtering (default 1);
  type: boolean
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- cd-hit-dup
