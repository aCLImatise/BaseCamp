class: CommandLineTool
id: anvi_report_linkmers.cwl
inputs:
- id: i
  doc: (S) [INPUT_BAM(S) ...], --input-files INPUT_BAM(S) [INPUT_BAM(S) ...] Sorted
    and indexed BAM files to analyze. It is essential that all BAM files must be the
    result of mappings against the same contigs.
  type: string
  inputBinding:
    prefix: -i
- id: contigs_and_positions
  doc: This is the file where you list the contigs, and nucleotide positions you are
    interested in. This is supposed to be a TAB-delimited file with two columns. In
    each line, the first column should be the contig name, and the second column should
    be the comma- separated list of integers for nucleotide positions.
  type: string
  inputBinding:
    prefix: --contigs-and-positions
- id: only_complete_links
  doc: When declared, only reads that cover all positions will be reported. It is
    necessary to use this flag if you want to perform oligotyping-like analyses on
    matching reads.
  type: boolean
  inputBinding:
    prefix: --only-complete-links
- id: output_file
  doc: File path to store results.
  type: File
  inputBinding:
    prefix: --output-file
- id: list_contigs
  doc: When declared, the program will list contigs in the BAM file and exit gracefully
    without any further analysis.
  type: boolean
  inputBinding:
    prefix: --list-contigs
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-report-linkmers
