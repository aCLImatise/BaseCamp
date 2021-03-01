class: CommandLineTool
id: agat_sq_rfam_analyzer.pl.cwl
inputs:
- id: in_input
  doc: "STRING: Input GTF/GFF file(s). Several files can be processed at\nonce: -i\
    \ file1 -i file2"
  type: File?
  inputBinding:
    prefix: --input
- id: in_genome
  doc: "That input is design to know the genome size in order to\ncalculate the percentage\
    \ of the genome represented by each kind\nof rfam-id. You can provide an INTEGER\
    \ or the genome in fasta\nformat. If you provide the fasta, the genome size will\
    \ be\ncalculated on the fly."
  type: boolean?
  inputBinding:
    prefix: --genome
- id: in_output
  doc: "STRING: Output file. If no output file is specified, the output\nwill be written\
    \ to STDOUT. The result is in tabulate format."
  type: File?
  inputBinding:
    prefix: --output
- id: in_agat_sq_rf_am_analyzer_do_tpl
  doc: 'Description:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "STRING: Output file. If no output file is specified, the output\nwill be written\
    \ to STDOUT. The result is in tabulate format."
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- agat_sq_rfam_analyzer.pl
