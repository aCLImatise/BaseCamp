#!/usr/bin/env cwl-runner

baseCommand:
- ncbi_extract_entrez2gene.py
class: CommandLineTool
cwlVersion: v1.0
id: ncbi_extract_entrez2gene.py
inputs:
- doc: Path of gene2accession.gz file (from ftp://ftp.ncbi.nlm.nih.gov/gene/DATA),
    or a filtered version thereof.
  id: gene2acc_file
  inputBinding:
    prefix: --gene2acc-file
  type: string
- doc: Path of output file. If set to ``-``, print to ``stdout``, and redirect logging
    messages to ``stderr``.
  id: output_file
  inputBinding:
    prefix: --output-file
  type: string
- doc: Path of log file. If not specified, print to stdout.
  id: log_file
  inputBinding:
    prefix: --log-file
  type: string
- doc: Suppress all output except warnings and errors.
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: Enable verbose output. Ignored if ``--quiet`` is specified.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
