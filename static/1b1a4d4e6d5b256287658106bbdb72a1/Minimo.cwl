class: CommandLineTool
id: Minimo.cwl
inputs:
- id: d
  doc: =<file>   Input quality score file (in Phred format)
  type: string
  inputBinding:
    prefix: -D
- id: d
  doc: '=<n>    Quality score to set for bases within the clear range if no quality
    file was given (default: 30)'
  type: string
  inputBinding:
    prefix: -D
- id: d
  doc: '=<n>     Quality score to set for bases outside clear range if no quality
    file was given (default: 10). If your sequences are trimmed, try the same value
    as GOOD_QUAL.'
  type: string
  inputBinding:
    prefix: -D
- id: d
  doc: '=<n>      Minimum contig overlap length (at least 20 bp,  default: 35)'
  type: long
  inputBinding:
    prefix: -D
- id: d
  doc: '=<d>    Minimum contig overlap identity percentage (between 0 and 100 %, default:
    98)'
  type: long
  inputBinding:
    prefix: -D
- id: d
  doc: '=<n>  Do a strand-specific assembly (e.g. for transcripts) (0:no 1:yes, default:
    0)'
  type: string
  inputBinding:
    prefix: -D
- id: d
  doc: '=<d>   Alignment wiggle value (from 2 for short reads to 15 for long reads,
    default: 2)'
  type: string
  inputBinding:
    prefix: -D
- id: d
  doc: '=<n>    Export results in FASTA format (0:no 1:yes, default: 0)'
  type: string
  inputBinding:
    prefix: -D
- id: d
  doc: '=<n>      Export results in ACE format (0:no 1:yes, default: 0)'
  type: string
  inputBinding:
    prefix: -D
- id: d
  doc: =<s>   Prefix to use for the output file path and name
  type: string
  inputBinding:
    prefix: -D
outputs: []
cwlVersion: v1.1
baseCommand:
- Minimo
