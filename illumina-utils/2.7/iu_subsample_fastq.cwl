class: CommandLineTool
id: iu_subsample_fastq.cwl
inputs:
- id: r1
  doc: FASTQ file to be subsampled. If you are subsampling a merged FASTQ or you don't
    have reverse reads, provide the filepath here and do not supply an argument for
    --r2. If you have forward and reverse reads, supply the filepaths as the arguments
    for --r1 and --r2, respectively.
  type: File
  inputBinding:
    prefix: --r1
- id: r2
  doc: FASTQ file for the reverse reads. Should be provided only if you are subsampling
    forward and reverse reads.
  type: File
  inputBinding:
    prefix: --r2
- id: output_1
  doc: The output filepath for the forward read. By default, the suffix "_{n}randomreads"
    is appended to the input filename
  type: File
  inputBinding:
    prefix: --output1
- id: output_2
  doc: The output filepath for the reverse read. By default, the suffix "_{n}randomreads"
    is appended to the input filename, where {n} is the argument of --num-reads. If
    you do not provide an argument for --r2 do not provide an argument for --output2.
  type: File
  inputBinding:
    prefix: --output2
- id: num_reads
  doc: Number of FASTQ entries to randomly sample
  type: long
  inputBinding:
    prefix: --num-reads
outputs: []
cwlVersion: v1.1
baseCommand:
- iu-subsample-fastq
