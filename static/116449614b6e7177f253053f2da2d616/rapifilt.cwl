class: CommandLineTool
id: rapifilt.cwl
inputs:
- id: in_program_version_information
  doc: Program and version information
  type: boolean
  inputBinding:
    prefix: -v
- id: in_enable_fasta_output
  doc: Enable fasta output (default fastq)
  type: boolean
  inputBinding:
    prefix: -f
- id: in_int_set_value
  doc: <int>                 Set lef-cut value for quality scores (int default 0)
  type: boolean
  inputBinding:
    prefix: -l
- id: in_int_set_rightcut
  doc: <int>                 Set right-cut value for quality scores (int default 0)
  type: boolean
  inputBinding:
    prefix: -r
- id: in_int_set_windows
  doc: <int>                 Set windows size to check on the quality scores (int
    default 1)
  type: boolean
  inputBinding:
    prefix: -w
- id: in_int_filter_sequence_shorter
  doc: <int>                 Filter sequence shorter than min_len (int default 1)
  type: boolean
  inputBinding:
    prefix: -m
- id: in_mx
  doc: <int>                Filter sequence larger than max_len (int default 5000)
  type: boolean
  inputBinding:
    prefix: -mx
- id: in_fast_q
  doc: <fastq file>      single fastq input (file.fastq) the file can be gz compressed
  type: boolean
  inputBinding:
    prefix: -fastq
- id: in_sff
  doc: <454 files>         454 input (file.sff)
  type: boolean
  inputBinding:
    prefix: -sff
- id: in_illumina_files_inputsfilefastq
  doc: <illumina files>      Illumina inputs(file1.fastq file2.fastq) the files can
    be gz compressed
  type: boolean
  inputBinding:
    prefix: -i
- id: in_desired_fastq_output
  doc: <fastq_file>          Desired fastq output file. If not specified to stdout
  type: File
  inputBinding:
    prefix: -o
- id: in_tb
  doc: <int>                Remove n bases from the begins of sequencing fragments
    (int default 0)
  type: boolean
  inputBinding:
    prefix: -tb
- id: in_te
  doc: <int>                Remove n bases from the ends of sequencing fragments (int
    default 0)
  type: boolean
  inputBinding:
    prefix: -te
- id: in_bin
  doc: <int>               Bin size used to compute statistic per base (int default
    1)
  type: boolean
  inputBinding:
    prefix: -bin
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_desired_fastq_output
  doc: <fastq_file>          Desired fastq output file. If not specified to stdout
  type: File
  outputBinding:
    glob: $(inputs.in_desired_fastq_output)
cwlVersion: v1.1
baseCommand:
- rapifilt
