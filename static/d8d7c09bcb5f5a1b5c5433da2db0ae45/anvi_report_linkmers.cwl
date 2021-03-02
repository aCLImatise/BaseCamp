class: CommandLineTool
id: anvi_report_linkmers.cwl
inputs:
- id: in_s_sorted_files
  doc: "(S) [INPUT_BAM(S) ...], --input-files INPUT_BAM(S) [INPUT_BAM(S) ...]\nSorted\
    \ and indexed BAM files to analyze. It is\nessential that all BAM files must be\
    \ the result of\nmappings against the same contigs. (default: None)"
  type: string?
  inputBinding:
    prefix: -i
- id: in_contigs_and_positions
  doc: "This is the file where you list the contigs, and\nnucleotide positions you\
    \ are interested in. This is\nsupposed to be a TAB-delimited file with two columns.\n\
    In each line, the first column should be the contig\nname, and the second column\
    \ should be the comma-\nseparated list of integers for nucleotide positions.\n\
    (default: None)"
  type: File?
  inputBinding:
    prefix: --contigs-and-positions
- id: in_only_complete_links
  doc: "When declared, only reads that cover all positions\nwill be reported. It is\
    \ necessary to use this flag if\nyou want to perform oligotyping-like analyses\
    \ on\nmatching reads. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --only-complete-links
- id: in_output_file
  doc: 'File path to store results. (default: None)'
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_list_contigs
  doc: "When declared, the program will list contigs in the\nBAM file and exit gracefully\
    \ without any further\nanalysis. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --list-contigs
- id: in_bam_file
  doc: '🍕 Can provide: '
  type: File
  inputBinding:
    position: 0
- id: in_link_mers_txt
  doc: '🍺 More on `anvi-report-linkmers`:'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: 'File path to store results. (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/anvio-minimal:7--py_0
cwlVersion: v1.1
baseCommand:
- anvi-report-linkmers
