#!/usr/bin/env cwl-runner

baseCommand:
- pbvalidate
class: CommandLineTool
cwlVersion: v1.0
id: pbvalidate
inputs:
- doc: BAM, FASTA, or DataSet XML file
  id: file
  inputBinding:
    position: 0
  type: File
- doc: 'Limits validation to the first 100 records (plus file header); equivalent
    to --max-records=100 (default: False)'
  id: quick
  inputBinding:
    prefix: --quick
  type: boolean
- doc: 'Exit after MAX_ERRORS have been recorded (DEFAULT: check entire file) (default:
    None)'
  id: max
  inputBinding:
    prefix: --max
  type: long
- doc: 'Exit after MAX_RECORDS have been inspected (DEFAULT: check entire file) (default:
    None)'
  id: max_records
  inputBinding:
    prefix: --max-records
  type: long
- doc: 'Use the specified file type instead of guessing (default: None)'
  id: type
  inputBinding:
    prefix: --type
  type: string
- doc: 'Require index files (.fai or .pbi) (default: False)'
  id: index
  inputBinding:
    prefix: --index
  type: boolean
- doc: 'Turn on additional validation, primarily for DataSet XML (default: False)'
  id: strict
  inputBinding:
    prefix: --strict
  type: boolean
- doc: 'Xunit test results for Jenkins (default: None)'
  id: x_unit_out
  inputBinding:
    prefix: --xunit-out
  type: string
- doc: 'Specify that the file should contain only unmapped alignments (DEFAULT: no
    requirement) (default: None)'
  id: unaligned
  inputBinding:
    prefix: --unaligned
  type: boolean
- doc: 'Alias for --unaligned (default: None)'
  id: unmapped
  inputBinding:
    prefix: --unmapped
  type: boolean
- doc: 'Specify that the file should contain only mapped alignments (DEFAULT: no requirement)
    (default: None)'
  id: aligned
  inputBinding:
    prefix: --aligned
  type: boolean
- doc: 'Alias for --aligned (default: None)'
  id: mapped
  inputBinding:
    prefix: --mapped
  type: boolean
- doc: 'Enforce read type (default: None)'
  id: contents
  inputBinding:
    prefix: --contents
  type: string
- doc: 'Path to optional reference FASTA file, used for additional validation of mapped
    BAM records (default: None)'
  id: reference
  inputBinding:
    prefix: --reference
  type: string
