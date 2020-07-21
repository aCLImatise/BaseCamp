class: CommandLineTool
id: ../../../amber.py.cwl
inputs:
- id: gold_standard_file
  doc: Gold standard - ground truth - file
  type: string
  inputBinding:
    prefix: --gold_standard_file
- id: labels
  doc: Comma-separated binning names
  type: string
  inputBinding:
    prefix: --labels
- id: filter
  doc: 'Filter out [FILTER]% smallest genome bins (default: 0)'
  type: string
  inputBinding:
    prefix: --filter
- id: min_length
  doc: Minimum length of sequences
  type: long
  inputBinding:
    prefix: --min_length
- id: output_dir
  doc: Directory to write the results to
  type: string
  inputBinding:
    prefix: --output_dir
- id: stdout
  doc: Print summary to stdout
  type: boolean
  inputBinding:
    prefix: --stdout
- id: desc
  doc: Description for HTML page
  type: string
  inputBinding:
    prefix: --desc
- id: colors
  doc: Color indices
  type: string
  inputBinding:
    prefix: --colors
- id: silent
  doc: Silent mode
  type: boolean
  inputBinding:
    prefix: --silent
- id: min_completeness
  doc: 'Comma-separated list of min. completeness thresholds (default %: 50,70,90)'
  type: long
  inputBinding:
    prefix: --min_completeness
- id: max_contamination
  doc: 'Comma-separated list of max. contamination thresholds (default %: 10,5)'
  type: long
  inputBinding:
    prefix: --max_contamination
- id: remove_genomes
  doc: File with list of genomes to be removed
  type: string
  inputBinding:
    prefix: --remove_genomes
- id: keyword
  doc: Keyword in the second column of file with list of genomes to be removed (no
    keyword=remove all genomes in list)
  type: string
  inputBinding:
    prefix: --keyword
- id: genome_coverage
  doc: genome coverages
  type: string
  inputBinding:
    prefix: --genome_coverage
- id: ncbi_nodes_file
  doc: NCBI nodes file
  type: string
  inputBinding:
    prefix: --ncbi_nodes_file
- id: ncbi_names_file
  doc: NCBI names file
  type: string
  inputBinding:
    prefix: --ncbi_names_file
- id: ncbi_merged_file
  doc: NCBI merged file
  type: string
  inputBinding:
    prefix: --ncbi_merged_file
- id: bin_files
  doc: Binning files
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- amber.py
