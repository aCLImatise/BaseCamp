class: CommandLineTool
id: getMeanAndStdevForGapsByGapNumUsingCeleraAsmFile.perl.cwl
inputs:
- id: in_contig_end_seq_file
  doc: "; the file that contains the contig end\nsequences to be joined by the gap\
    \ closer\n"
  type: File
  inputBinding:
    prefix: --contig-end-seq-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- getMeanAndStdevForGapsByGapNumUsingCeleraAsmFile.perl
