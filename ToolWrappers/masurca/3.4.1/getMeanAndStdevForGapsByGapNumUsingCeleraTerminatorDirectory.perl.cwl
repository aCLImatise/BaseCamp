class: CommandLineTool
id: getMeanAndStdevForGapsByGapNumUsingCeleraTerminatorDirectory.perl.cwl
inputs:
- id: in_contig_end_seq_file
  doc: "; the file that contains the contig end\nsequences to be joined by the gap\
    \ closer"
  type: File?
  inputBinding:
    prefix: --contig-end-seq-file
- id: in_reduced_column_output
  doc: ': Output just the gapNum mean and stdev for each gap'
  type: boolean?
  inputBinding:
    prefix: --reduced-column-output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- getMeanAndStdevForGapsByGapNumUsingCeleraTerminatorDirectory.perl
