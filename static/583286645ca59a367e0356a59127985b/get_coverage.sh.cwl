class: CommandLineTool
id: get_coverage.sh.cwl
inputs:
- id: in_file_sorted_bam
  doc: file in sorted BAM format
  type: File?
  inputBinding:
    prefix: -i
- id: in_directory_optional
  doc: directory (optional)
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_extract_length_file
  doc: to extract length. Fasta file used to map against
  type: long?
  inputBinding:
    prefix: -d
- id: in_depth_reported_default
  doc: depth reported (default 500)
  type: long?
  inputBinding:
    prefix: -m
- id: in_genome_coverage_positions
  doc: "genome coverage for all positions in BEDGRAPH format includig 0 positions.\n\
    Default option is bedtools genomecov that needs the reference genome"
  type: long?
  inputBinding:
    prefix: -p
- id: in_name
  doc: name
  type: string?
  inputBinding:
    prefix: -s
- id: in_name_optional_unset
  doc: name (optional). If unset, samples will be gathered in NO_GROUP group
  type: string?
  inputBinding:
    prefix: -g
- id: in_usage_message
  doc: usage message
  type: string?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/plasmidid:1.6.4--1
cwlVersion: v1.1
baseCommand:
- get_coverage.sh
