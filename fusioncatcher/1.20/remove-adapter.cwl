#!/usr/bin/env cwl-runner

baseCommand:
- remove-adapter.py
class: CommandLineTool
cwlVersion: v1.0
id: remove-adapter.py
inputs:
- doc: The output FASTQ file where the reads are trimmed.
  id: output_1
  inputBinding:
    prefix: --output_1
  type: string
- doc: The output FASTQ file where the reads are trimmed.
  id: output_2
  inputBinding:
    prefix: --output_2
  type: string
- doc: It outputs a detalied statistics of the trimming.
  id: log
  inputBinding:
    prefix: --log
  type: string
- doc: It outputs also the alignment for each found overlapping.
  id: alignment_log
  inputBinding:
    prefix: --alignment_log
  type: string
- doc: The minimum length of the region which is considered an overlap. Default is
    10.
  id: reads_overlap
  inputBinding:
    prefix: --reads_overlap
  type: string
- doc: The length of the adapter which is found automaticaly and further used for
    trimming. Default is 13.
  id: len_adapter
  inputBinding:
    prefix: --len_adapter
  type: string
- doc: The reads stricly shorter than 20 after the adapter trimming will be removed
    (i.e. replaced with a read of length one containing the sequence 'N'). Default
    is 20.
  id: shortest_read
  inputBinding:
    prefix: --shortest_read
  type: string
- doc: The percentage of reads which should contain the found candidate-adapter (during
    the automatic adapter- finding step) in order to be considered a real adapter
    and used further for trimming. The range is [0..1]. Default is 0.0001.
  id: threshold_infer_adapter
  inputBinding:
    prefix: --threshold_infer_adapter
  type: string
- doc: The number of first reads which are used for finding automatically the adapter.
    If it is set to 0 then all the reads from the files are used. Default is 3000000.
  id: reads_infer_adapter
  inputBinding:
    prefix: --reads_infer_adapter
  type: string
- doc: The number of Ns needed to be found in order the trimming of Ns (from both
    reads ends) is done. Default is 0.
  id: trim_n
  inputBinding:
    prefix: --trim-n
  type: string
- doc: The type of link between the input and output file when there are no changes
    done. The choices are ['soft','hard']. Default is 'soft'.
  id: link
  inputBinding:
    prefix: --link
  type: string
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
- doc: Maximum number of parallel processes/CPUs to be used for computations. In case
    of value 0 then the program will try to use, if it see fit, all the CPUs which
    are found. The default value is 0.
  id: processes
  inputBinding:
    prefix: --processes
  type: string
