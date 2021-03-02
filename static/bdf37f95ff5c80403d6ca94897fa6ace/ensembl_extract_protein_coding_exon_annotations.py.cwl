class: CommandLineTool
id: ensembl_extract_protein_coding_exon_annotations.py.cwl
inputs:
- id: in_annotation_file
  doc: "Path of Ensembl gene annotation file (in GTF format). The file\nmay be gzip'ed.\
    \ If set to ``-``, read from ``stdin``."
  type: File?
  inputBinding:
    prefix: --annotation-file
- id: in_output_file
  doc: "Path of output file. If set to ``-``, print to ``stdout``,\nand redirect logging\
    \ messages to ``stderr``."
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_species
  doc: "Species for which to extract genes. (This parameter is ignored\nif ``--chromosome-pattern``\
    \ is specified.)"
  type: string?
  inputBinding:
    prefix: --species
- id: in_chromosome_pattern
  doc: "Regular expression that chromosome names have to match.\nIf not specified,\
    \ determine pattern based on\n``--species``."
  type: string?
  inputBinding:
    prefix: --chromosome-pattern
- id: in_field_name
  doc: "Rows in the GTF file that do not contain this value\nin the third column are\
    \ ignored."
  type: File?
  inputBinding:
    prefix: --field-name
- id: in_log_file
  doc: Path of log file (if specified, report to stdout AND file.
  type: File?
  inputBinding:
    prefix: --log-file
- id: in_quiet
  doc: Only output errors and warnings.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: Enable verbose output. Ignored if --quiet is specified.
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: "Path of output file. If set to ``-``, print to ``stdout``,\nand redirect logging\
    \ messages to ``stderr``."
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- ensembl_extract_protein_coding_exon_annotations.py
