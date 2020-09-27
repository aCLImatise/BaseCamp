class: CommandLineTool
id: ncbi_extract_entrez2gene.py.cwl
inputs:
- id: in_gene_two_acc_file
  doc: "Path of gene2accession.gz file (from\nftp://ftp.ncbi.nlm.nih.gov/gene/DATA),\
    \ or a filtered version\nthereof."
  type: File
  inputBinding:
    prefix: --gene2acc-file
- id: in_output_file
  doc: "Path of output file. If set to ``-``, print to ``stdout``,\nand redirect logging\
    \ messages to ``stderr``."
  type: File
  inputBinding:
    prefix: --output-file
- id: in_log_file
  doc: Path of log file. If not specified, print to stdout.
  type: File
  inputBinding:
    prefix: --log-file
- id: in_quiet
  doc: Suppress all output except warnings and errors.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: Enable verbose output. Ignored if ``--quiet`` is specified.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: "Path of output file. If set to ``-``, print to ``stdout``,\nand redirect logging\
    \ messages to ``stderr``."
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- ncbi_extract_entrez2gene.py
