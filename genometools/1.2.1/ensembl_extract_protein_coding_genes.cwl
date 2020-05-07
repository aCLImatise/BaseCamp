class: CommandLineTool
id: ensembl_extract_protein_coding_genes.py.cwl
inputs:
- id: annotation_file
  doc: Path of Ensembl gene annotation file (in GTF format). The file may be gzip'ed.
    If set to ``-``, read from ``stdin``.
  type: string
  inputBinding:
    prefix: --annotation-file
- id: output_file
  doc: Path of output file. If set to ``-``, print to ``stdout``, and redirect logging
    messages to ``stderr``.
  type: string
  inputBinding:
    prefix: --output-file
- id: species
  doc: Species for which to extract genes. (This parameter is ignored if ``--chromosome-pattern``
    is specified.)
  type: string
  inputBinding:
    prefix: --species
- id: chromosome_pattern
  doc: Regular expression that chromosome names have to match. If not specified, determine
    pattern based on ``--species``.
  type: string
  inputBinding:
    prefix: --chromosome-pattern
- id: field_name
  doc: Rows in the GTF file that do not contain this value in the third column are
    ignored.
  type: string
  inputBinding:
    prefix: --field-name
- id: log_file
  doc: Path of log file (if specified, report to stdout AND file.
  type: File
  inputBinding:
    prefix: --log-file
- id: quiet
  doc: Only output errors and warnings.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: verbose
  doc: Enable verbose output. Ignored if --quiet is specified.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- ensembl_extract_protein_coding_genes.py
