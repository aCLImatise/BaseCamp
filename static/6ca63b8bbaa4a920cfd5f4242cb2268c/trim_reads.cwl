class: CommandLineTool
id: trim_reads.py.cwl
inputs:
- id: input
  doc: Input FASTQ file which contanins the reads which will be trimmed.
  type: string
  inputBinding:
    prefix: --input
- id: trim_size
  doc: The size of part which is trimmed from each read. It should not be used together
    with --size!
  type: string
  inputBinding:
    prefix: --trim_size
- id: final_size
  doc: The size of read part which is left after trimming. If the read is shorter
    than this then no trimming is performed.
  type: long
  inputBinding:
    prefix: --final_size
- id: trim_end
  doc: The end of the short read where the trimming will be done. The choices are
    [5,3].
  type: string
  inputBinding:
    prefix: --trim_end
- id: trim_n
  doc: It trims the Ns from the reads sequence ends, wherever is possible, such that
    to minimize the amount of Ns in the read sequence which is left after the trimming.
    It works only with '--final_size'.'
  type: boolean
  inputBinding:
    prefix: --trim_n
- id: output
  doc: The output FASTQ file containing the trimmed reads.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- trim_reads.py
