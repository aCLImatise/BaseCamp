class: CommandLineTool
id: amber.py.cwl
inputs:
- id: in_gold_standard_file
  doc: Gold standard - ground truth - file
  type: File?
  inputBinding:
    prefix: --gold_standard_file
- id: in_labels
  doc: Comma-separated binning names
  type: string?
  inputBinding:
    prefix: --labels
- id: in_filter
  doc: 'Filter out [FILTER]% smallest genome bins (default: 0)'
  type: long?
  inputBinding:
    prefix: --filter
- id: in_min_length
  doc: Minimum length of sequences
  type: long?
  inputBinding:
    prefix: --min_length
- id: in_output_dir
  doc: Directory to write the results to
  type: Directory?
  inputBinding:
    prefix: --output_dir
- id: in_stdout
  doc: Print summary to stdout
  type: boolean?
  inputBinding:
    prefix: --stdout
- id: in_desc
  doc: Description for HTML page
  type: string?
  inputBinding:
    prefix: --desc
- id: in_colors
  doc: Color indices
  type: string?
  inputBinding:
    prefix: --colors
- id: in_silent
  doc: Silent mode
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in_min_completeness
  doc: "Comma-separated list of min. completeness thresholds\n(default %: 50,70,90)"
  type: long?
  inputBinding:
    prefix: --min_completeness
- id: in_max_contamination
  doc: "Comma-separated list of max. contamination thresholds\n(default %: 10,5)"
  type: long?
  inputBinding:
    prefix: --max_contamination
- id: in_remove_genomes
  doc: File with list of genomes to be removed
  type: File?
  inputBinding:
    prefix: --remove_genomes
- id: in_keyword
  doc: "Keyword in the second column of file with list of\ngenomes to be removed (no\
    \ keyword=remove all genomes\nin list)"
  type: File?
  inputBinding:
    prefix: --keyword
- id: in_genome_coverage
  doc: genome coverages
  type: string?
  inputBinding:
    prefix: --genome_coverage
- id: in_ncbi_nodes_file
  doc: NCBI nodes file
  type: File?
  inputBinding:
    prefix: --ncbi_nodes_file
- id: in_ncbi_names_file
  doc: NCBI names file
  type: File?
  inputBinding:
    prefix: --ncbi_names_file
- id: in_ncbi_merged_file
  doc: "NCBI merged file\n"
  type: File?
  inputBinding:
    prefix: --ncbi_merged_file
- id: in_bin_files
  doc: Binning files
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- amber.py
