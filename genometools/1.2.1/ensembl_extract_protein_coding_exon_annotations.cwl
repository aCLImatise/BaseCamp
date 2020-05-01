#!/usr/bin/env cwl-runner

baseCommand:
- ensembl_extract_protein_coding_exon_annotations.py
class: CommandLineTool
cwlVersion: v1.0
id: ensembl_extract_protein_coding_exon_annotations.py
inputs:
- doc: Path of Ensembl gene annotation file (in GTF format). The file may be gzip'ed.
    If set to ``-``, read from ``stdin``.
  id: annotation_file
  inputBinding:
    prefix: --annotation-file
  type: string
- doc: Path of output file. If set to ``-``, print to ``stdout``, and redirect logging
    messages to ``stderr``.
  id: output_file
  inputBinding:
    prefix: --output-file
  type: string
- doc: Species for which to extract genes. (This parameter is ignored if ``--chromosome-pattern``
    is specified.)
  id: species
  inputBinding:
    prefix: --species
  type: string
- doc: Regular expression that chromosome names have to match. If not specified, determine
    pattern based on ``--species``.
  id: chromosome_pattern
  inputBinding:
    prefix: --chromosome-pattern
  type: string
- doc: Rows in the GTF file that do not contain this value in the third column are
    ignored.
  id: field_name
  inputBinding:
    prefix: --field-name
  type: string
- doc: Path of log file (if specified, report to stdout AND file.
  id: log_file
  inputBinding:
    prefix: --log-file
  type: File
- doc: Only output errors and warnings.
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: Enable verbose output. Ignored if --quiet is specified.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
