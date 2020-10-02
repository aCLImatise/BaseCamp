class: CommandLineTool
id: anvi_report_linkmers.cwl
inputs:
- id: in_contigs_and_positions
  doc: "[--only-complete-links] -o FILE_PATH\n[--list-contigs]"
  type: string
  inputBinding:
    prefix: --contigs-and-positions
- id: in_s_sorted_indexed
  doc: "(S) [INPUT_BAM(S) ...], --input-files INPUT_BAM(S) [INPUT_BAM(S) ...]\nSorted\
    \ and indexed BAM files to analyze. It is\nessential that all BAM files must be\
    \ the result of\nmappings against the same contigs."
  type: string
  inputBinding:
    prefix: -i
- id: in_only_complete_links
  doc: "When declared, only reads that cover all positions\nwill be reported. It is\
    \ necessary to use this flag if\nyou want to perform oligotyping-like analyses\
    \ on\nmatching reads."
  type: boolean
  inputBinding:
    prefix: --only-complete-links
- id: in_output_file
  doc: File path to store results.
  type: File
  inputBinding:
    prefix: --output-file
- id: in_list_contigs
  doc: "When declared, the program will list contigs in the\nBAM file and exit gracefully\
    \ without any further\nanalysis.\n"
  type: boolean
  inputBinding:
    prefix: --list-contigs
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: File path to store results.
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- anvi-report-linkmers
