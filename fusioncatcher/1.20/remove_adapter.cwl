class: CommandLineTool
id: remove_adapter.py.cwl
inputs:
- id: output_1
  doc: The output FASTQ file where the reads are trimmed.
  type: string
  inputBinding:
    prefix: --output_1
- id: output_2
  doc: The output FASTQ file where the reads are trimmed.
  type: string
  inputBinding:
    prefix: --output_2
- id: log
  doc: It outputs a detalied statistics of the trimming.
  type: string
  inputBinding:
    prefix: --log
- id: alignment_log
  doc: It outputs also the alignment for each found overlapping.
  type: string
  inputBinding:
    prefix: --alignment_log
- id: reads_overlap
  doc: The minimum length of the region which is considered an overlap. Default is
    10.
  type: string
  inputBinding:
    prefix: --reads_overlap
- id: len_adapter
  doc: The length of the adapter which is found automaticaly and further used for
    trimming. Default is 13.
  type: string
  inputBinding:
    prefix: --len_adapter
- id: shortest_read
  doc: The reads stricly shorter than 20 after the adapter trimming will be removed
    (i.e. replaced with a read of length one containing the sequence 'N'). Default
    is 20.
  type: string
  inputBinding:
    prefix: --shortest_read
- id: threshold_infer_adapter
  doc: The percentage of reads which should contain the found candidate-adapter (during
    the automatic adapter- finding step) in order to be considered a real adapter
    and used further for trimming. The range is [0..1]. Default is 0.0001.
  type: string
  inputBinding:
    prefix: --threshold_infer_adapter
- id: reads_infer_adapter
  doc: The number of first reads which are used for finding automatically the adapter.
    If it is set to 0 then all the reads from the files are used. Default is 3000000.
  type: string
  inputBinding:
    prefix: --reads_infer_adapter
- id: trim_n
  doc: The number of Ns needed to be found in order the trimming of Ns (from both
    reads ends) is done. Default is 0.
  type: string
  inputBinding:
    prefix: --trim-n
- id: link
  doc: The type of link between the input and output file when there are no changes
    done. The choices are ['soft','hard']. Default is 'soft'.
  type: string
  inputBinding:
    prefix: --link
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
- id: processes
  doc: Maximum number of parallel processes/CPUs to be used for computations. In case
    of value 0 then the program will try to use, if it see fit, all the CPUs which
    are found. The default value is 0.
  type: string
  inputBinding:
    prefix: --processes
outputs: []
cwlVersion: v1.1
baseCommand:
- remove-adapter.py
