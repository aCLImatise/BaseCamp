class: CommandLineTool
id: agat_sq_keep_annotation_from_fastaSeq.pl.cwl
inputs:
- id: in_input
  doc: 'STRING: Input GTF/GFF file.'
  type: File
  inputBinding:
    prefix: --input
- id: in_fast_a
  doc: 'STRING: fasta file.'
  type: File
  inputBinding:
    prefix: --fasta
- id: in_verbose
  doc: For verbosity
  type: string
  inputBinding:
    prefix: --verbose
- id: in_output
  doc: "STRING: Output file. If no output file is specified, the output\nwill be written\
    \ to STDOUT. The result is in tabulate format."
  type: File
  inputBinding:
    prefix: --output
- id: in_agat_sq_keep_annotation_from_fast_as_eq_do_tpl
  doc: 'Description:'
  type: string
  inputBinding:
    position: 0
- id: in_sensitive_dot
  doc: "Usage:\nagat_sq_keep_annotation_from_fastaSeq.pl --gff <gff_file.gff> --fasta\
    \ <fasta_file.fa> [-o <output file>]\nagat_sq_keep_annotation_from_fastaSeq.pl\
    \ --help"
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
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- agat_sq_keep_annotation_from_fastaSeq.pl
