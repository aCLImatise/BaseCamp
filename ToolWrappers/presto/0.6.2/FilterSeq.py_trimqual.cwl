class: CommandLineTool
id: FilterSeq.py_trimqual.cwl
inputs:
- id: in_list_fastafastq_files
  doc: "A list of FASTA/FASTQ files containing sequences to\nprocess. (default: None)"
  type: string[]
  inputBinding:
    prefix: -s
- id: in_explicit_output_file
  doc: "Explicit output file name(s). Note, this argument\ncannot be used with the\
    \ --failed, --outdir, or\n--outname arguments. If unspecified, then the output\n\
    filename will be based on the input filename(s).\n(default: None)"
  type: string[]
  inputBinding:
    prefix: -o
- id: in_outdir
  doc: "Specify to changes the output directory to the\nlocation specified. The input\
    \ file directory is used\nif this is not specified. (default: None)"
  type: File?
  inputBinding:
    prefix: --outdir
- id: in_out_name
  doc: "Changes the prefix of the successfully processed\noutput file to the string\
    \ specified. May not be\nspecified with multiple input files. (default: None)"
  type: File?
  inputBinding:
    prefix: --outname
- id: in_log
  doc: "Specify to write verbose logging to a file. May not be\nspecified with multiple\
    \ input files. (default: None)"
  type: File?
  inputBinding:
    prefix: --log
- id: in_failed
  doc: "If specified create files containing records that fail\nprocessing. (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --failed
- id: in_fast_a
  doc: "Specify to force output as FASTA rather than FASTQ.\n(default: None)"
  type: boolean?
  inputBinding:
    prefix: --fasta
- id: in_nproc
  doc: "The number of simultaneous computational processes to\nexecute (CPU cores\
    \ to utilized). (default: 8)"
  type: long?
  inputBinding:
    prefix: --nproc
- id: in_quality_score_threshold
  doc: 'Quality score threshold. (default: 20)'
  type: long?
  inputBinding:
    prefix: -q
- id: in_win
  doc: "Nucleotide window size for moving average calculation.\n(default: 10)"
  type: long?
  inputBinding:
    prefix: --win
- id: in_reverse
  doc: "Specify to trim the head of the sequence rather than\nthe tail. (default:\
    \ False)\n"
  type: boolean?
  inputBinding:
    prefix: --reverse
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/presto:0.6.2--py_0
cwlVersion: v1.1
baseCommand:
- FilterSeq.py
- trimqual
