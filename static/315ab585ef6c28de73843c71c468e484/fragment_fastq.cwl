class: CommandLineTool
id: fragment_fastq.py.cwl
inputs:
- id: output_1
  doc: The output FASTQ file where the reads are trimmed.
  type: string
  inputBinding:
    prefix: --output_1
- id: output_2
  doc: The output FASTQ file where the reads are trimmed. If this is not used then
    all the output reads are written in '-f' as interleaved.
  type: string
  inputBinding:
    prefix: --output_2
- id: log
  doc: It outputs a detalied statistics of the trimming.
  type: string
  inputBinding:
    prefix: --log
- id: window_size
  doc: The size of the new reads. This should be shorter than the size of input reads.
    Default is 82.
  type: string
  inputBinding:
    prefix: --window-size
- id: step_size
  doc: The size of step for the sliding window used to fragment the input reads. This
    should be shorter than the size of input reads. Default is 60.
  type: string
  inputBinding:
    prefix: --step-size
- id: threshold_read
  doc: The reads shorter than this will not be fragmented. If it is set then it should
    be higher than window size. By default reads shorter than the window size will
    not be fragmented.
  type: string
  inputBinding:
    prefix: --threshold-read
- id: anchors
  doc: Number of anchors. Default is 4.
  type: string
  inputBinding:
    prefix: --anchors
- id: skip_short
  doc: The paired-end where both reads are shorter than this will be filtered out.
    Default is '0'.
  type: string
  inputBinding:
    prefix: --skip-short
- id: wiggle_end
  doc: The last fragment will not be generated if it overlaps with the previous generated
    fragment and the non- overlapping segment is strictly shorter than this threshold.
    This applies only for paired-end reads. Default is '16'.
  type: string
  inputBinding:
    prefix: --wiggle-end
- id: trim_n
  doc: If it is set then Ns from both ends of the read are trimmed.
  type: boolean
  inputBinding:
    prefix: --trim-n
- id: quiet
  doc: Do not print status messages to stdout.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: author
  doc: 'Daniel Nicorici, E-mail: Daniel.Nicorici@gmail.com'
  type: string
  inputBinding:
    prefix: --author
outputs: []
cwlVersion: v1.1
baseCommand:
- fragment_fastq.py
