class: CommandLineTool
id: ncbi_extract_entrez2gene.py.cwl
inputs:
- id: gene2acc_file
  doc: Path of gene2accession.gz file (from ftp://ftp.ncbi.nlm.nih.gov/gene/DATA),
    or a filtered version thereof.
  type: string
  inputBinding:
    prefix: --gene2acc-file
- id: output_file
  doc: Path of output file. If set to ``-``, print to ``stdout``, and redirect logging
    messages to ``stderr``.
  type: string
  inputBinding:
    prefix: --output-file
- id: log_file
  doc: Path of log file. If not specified, print to stdout.
  type: string
  inputBinding:
    prefix: --log-file
- id: quiet
  doc: Suppress all output except warnings and errors.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: verbose
  doc: Enable verbose output. Ignored if ``--quiet`` is specified.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- ncbi_extract_entrez2gene.py
