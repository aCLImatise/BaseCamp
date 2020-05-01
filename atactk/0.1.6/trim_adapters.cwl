#!/usr/bin/env cwl-runner

baseCommand:
- trim_adapters
class: CommandLineTool
cwlVersion: v1.0
id: trim_adapters
inputs:
- doc: The (optionally gzipped) FASTQ file containing the forward reads.
  id: forward
  inputBinding:
    position: 0
  type: string
- doc: The (optionally gzipped) FASTQ file containing the reverse reads.
  id: reverse
  inputBinding:
    position: 1
  type: string
- doc: 'The maximum edit distance permitted when aligning the paired reads (default:
    1).'
  id: max_edit_distance
  inputBinding:
    prefix: --max-edit-distance
  type: string
- doc: 'An arbitrary number of extra bases to trim from the ends of reads (default:
    1) because the original pyadapter_trim.py script did so.'
  id: fudge
  inputBinding:
    prefix: --fudge
  type: string
- doc: 'Trim this number of bases from the start of each sequence (default: 0).'
  id: trim_from_start
  inputBinding:
    prefix: --trim-from-start
  type: string
- doc: 'Use the reverse complement of this number of bases from the beginning of the
    reverse read to align the reads (default: 20).'
  id: rc_length
  inputBinding:
    prefix: --rc-length
  type: string
- doc: Report on the handling of each FASTQ record.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
