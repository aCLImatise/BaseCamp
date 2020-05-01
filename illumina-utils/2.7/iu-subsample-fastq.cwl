#!/usr/bin/env cwl-runner

baseCommand:
- iu-subsample-fastq
class: CommandLineTool
cwlVersion: v1.0
id: iu-subsample-fastq
inputs:
- doc: FASTQ file to be subsampled. If you are subsampling a merged FASTQ or you don't
    have reverse reads, provide the filepath here and do not supply an argument for
    --r2. If you have forward and reverse reads, supply the filepaths as the arguments
    for --r1 and --r2, respectively.
  id: r1
  inputBinding:
    prefix: --r1
  type: File
- doc: FASTQ file for the reverse reads. Should be provided only if you are subsampling
    forward and reverse reads.
  id: r2
  inputBinding:
    prefix: --r2
  type: File
- doc: The output filepath for the forward read. By default, the suffix "_{n}randomreads"
    is appended to the input filename
  id: output_1
  inputBinding:
    prefix: --output1
  type: File
- doc: The output filepath for the reverse read. By default, the suffix "_{n}randomreads"
    is appended to the input filename, where {n} is the argument of --num-reads. If
    you do not provide an argument for --r2 do not provide an argument for --output2.
  id: output_2
  inputBinding:
    prefix: --output2
  type: File
- doc: Number of FASTQ entries to randomly sample
  id: num_reads
  inputBinding:
    prefix: --num-reads
  type: long
