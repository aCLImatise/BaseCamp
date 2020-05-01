#!/usr/bin/env cwl-runner

baseCommand:
- fragment_fastq.py
class: CommandLineTool
cwlVersion: v1.0
id: fragment_fastq.py
inputs:
- doc: The output FASTQ file where the reads are trimmed.
  id: output_1
  inputBinding:
    prefix: --output_1
  type: string
- doc: The output FASTQ file where the reads are trimmed. If this is not used then
    all the output reads are written in '-f' as interleaved.
  id: output_2
  inputBinding:
    prefix: --output_2
  type: string
- doc: It outputs a detalied statistics of the trimming.
  id: log
  inputBinding:
    prefix: --log
  type: string
- doc: The size of the new reads. This should be shorter than the size of input reads.
    Default is 82.
  id: window_size
  inputBinding:
    prefix: --window-size
  type: string
- doc: The size of step for the sliding window used to fragment the input reads. This
    should be shorter than the size of input reads. Default is 60.
  id: step_size
  inputBinding:
    prefix: --step-size
  type: string
- doc: The reads shorter than this will not be fragmented. If it is set then it should
    be higher than window size. By default reads shorter than the window size will
    not be fragmented.
  id: threshold_read
  inputBinding:
    prefix: --threshold-read
  type: string
- doc: Number of anchors. Default is 4.
  id: anchors
  inputBinding:
    prefix: --anchors
  type: string
- doc: The paired-end where both reads are shorter than this will be filtered out.
    Default is '0'.
  id: skip_short
  inputBinding:
    prefix: --skip-short
  type: string
- doc: The last fragment will not be generated if it overlaps with the previous generated
    fragment and the non- overlapping segment is strictly shorter than this threshold.
    This applies only for paired-end reads. Default is '16'.
  id: wiggle_end
  inputBinding:
    prefix: --wiggle-end
  type: string
- doc: If it is set then Ns from both ends of the read are trimmed.
  id: trim_n
  inputBinding:
    prefix: --trim-n
  type: boolean
- doc: Do not print status messages to stdout.
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: 'Daniel Nicorici, E-mail: Daniel.Nicorici@gmail.com'
  id: author
  inputBinding:
    prefix: --author
  type: string
