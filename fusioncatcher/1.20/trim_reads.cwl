#!/usr/bin/env cwl-runner

baseCommand:
- trim_reads.py
class: CommandLineTool
cwlVersion: v1.0
id: trim_reads.py
inputs:
- doc: Input FASTQ file which contanins the reads which will be trimmed.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: The size of part which is trimmed from each read. It should not be used together
    with --size!
  id: trim_size
  inputBinding:
    prefix: --trim_size
  type: string
- doc: The size of read part which is left after trimming. If the read is shorter
    than this then no trimming is performed.
  id: final_size
  inputBinding:
    prefix: --final_size
  type: long
- doc: The end of the short read where the trimming will be done. The choices are
    [5,3].
  id: trim_end
  inputBinding:
    prefix: --trim_end
  type: string
- doc: It trims the Ns from the reads sequence ends, wherever is possible, such that
    to minimize the amount of Ns in the read sequence which is left after the trimming.
    It works only with '--final_size'.'
  id: trim_n
  inputBinding:
    prefix: --trim_n
  type: boolean
- doc: The output FASTQ file containing the trimmed reads.
  id: output
  inputBinding:
    prefix: --output
  type: string
