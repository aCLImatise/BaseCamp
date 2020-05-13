class: CommandLineTool
id: trim_adapters.cwl
inputs:
- id: forward
  doc: The (optionally gzipped) FASTQ file containing the forward reads.
  type: string
  inputBinding:
    position: 0
- id: reverse
  doc: The (optionally gzipped) FASTQ file containing the reverse reads.
  type: string
  inputBinding:
    position: 1
- id: max_edit_distance
  doc: 'The maximum edit distance permitted when aligning the paired reads (default:
    1).'
  type: string
  inputBinding:
    prefix: --max-edit-distance
- id: fudge
  doc: 'An arbitrary number of extra bases to trim from the ends of reads (default:
    1) because the original pyadapter_trim.py script did so.'
  type: string
  inputBinding:
    prefix: --fudge
- id: trim_from_start
  doc: 'Trim this number of bases from the start of each sequence (default: 0).'
  type: string
  inputBinding:
    prefix: --trim-from-start
- id: rc_length
  doc: 'Use the reverse complement of this number of bases from the beginning of the
    reverse read to align the reads (default: 20).'
  type: string
  inputBinding:
    prefix: --rc-length
- id: verbose
  doc: Report on the handling of each FASTQ record.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- trim_adapters
