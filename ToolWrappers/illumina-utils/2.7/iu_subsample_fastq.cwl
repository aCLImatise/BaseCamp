class: CommandLineTool
id: iu_subsample_fastq.cwl
inputs:
- id: in_r_one
  doc: "FASTQ file to be subsampled. If you are subsampling a\nmerged FASTQ or you\
    \ don't have reverse reads, provide\nthe filepath here and do not supply an argument\
    \ for\n--r2. If you have forward and reverse reads, supply\nthe filepaths as the\
    \ arguments for --r1 and --r2,\nrespectively."
  type: File?
  inputBinding:
    prefix: --r1
- id: in_r_two
  doc: "FASTQ file for the reverse reads. Should be provided\nonly if you are subsampling\
    \ forward and reverse reads."
  type: File?
  inputBinding:
    prefix: --r2
- id: in_output_one
  doc: "The output filepath for the forward read. By default,\nthe suffix \"_{n}randomreads\"\
    \ is appended to the input\nfilename"
  type: File?
  inputBinding:
    prefix: --output1
- id: in_output_two
  doc: "The output filepath for the reverse read. By default,\nthe suffix \"_{n}randomreads\"\
    \ is appended to the input\nfilename, where {n} is the argument of --num-reads.\
    \ If\nyou do not provide an argument for --r2 do not provide\nan argument for\
    \ --output2."
  type: File?
  inputBinding:
    prefix: --output2
- id: in_num_reads
  doc: "Number of FASTQ entries to randomly sample\n"
  type: long?
  inputBinding:
    prefix: --num-reads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- iu-subsample-fastq
