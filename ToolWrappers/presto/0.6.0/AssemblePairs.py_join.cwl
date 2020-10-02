class: CommandLineTool
id: AssemblePairs.py_join.cwl
inputs:
- id: in_two
  doc: "[-o OUT_FILES [OUT_FILES ...]] [--outdir OUT_DIR]\n[--outname OUT_NAME] [--log\
    \ LOG_FILE] [--failed]\n[--fasta] [--delim DELIMITER DELIMITER DELIMITER]\n[--nproc\
    \ NPROC]\n[--coord {illumina,solexa,sra,454,presto}]\n[--rc {tail,head,both,none}]\n\
    [--1f HEAD_FIELDS [HEAD_FIELDS ...]]\n[--2f TAIL_FIELDS [TAIL_FIELDS ...]] [--gap\
    \ GAP]"
  type: long[]
  inputBinding:
    prefix: '-2'
- id: in_ordered_list_fastafastq
  doc: "An ordered list of FASTA/FASTQ files containing\nhead/primary sequences. (default:\
    \ None)"
  type: long[]
  inputBinding:
    prefix: '-1'
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
  type: File
  inputBinding:
    prefix: --outdir
- id: in_out_name
  doc: "Changes the prefix of the successfully processed\noutput file to the string\
    \ specified. May not be\nspecified with multiple input files. (default: None)"
  type: File
  inputBinding:
    prefix: --outname
- id: in_log
  doc: "Specify to write verbose logging to a file. May not be\nspecified with multiple\
    \ input files. (default: None)"
  type: File
  inputBinding:
    prefix: --log
- id: in_failed
  doc: "If specified create files containing records that fail\nprocessing. (default:\
    \ False)"
  type: boolean
  inputBinding:
    prefix: --failed
- id: in_fast_a
  doc: "Specify to force output as FASTA rather than FASTQ.\n(default: None)"
  type: boolean
  inputBinding:
    prefix: --fasta
- id: in_delim
  doc: "DELIMITER DELIMITER\nA list of the three delimiters that separate\nannotation\
    \ blocks, field names and values, and values\nwithin a field, respectively. (default:\
    \ ('|', '=',\n','))"
  type: string
  inputBinding:
    prefix: --delim
- id: in_nproc
  doc: "The number of simultaneous computational processes to\nexecute (CPU cores\
    \ to utilized). (default: 8)"
  type: long
  inputBinding:
    prefix: --nproc
- id: in_coord
  doc: "The format of the sequence identifier which defines\nshared coordinate information\
    \ across paired ends.\n(default: presto)"
  type: string
  inputBinding:
    prefix: --coord
- id: in_rc
  doc: "Specify which read to reverse complement before\nstitching. (default: tail)"
  type: string
  inputBinding:
    prefix: --rc
- id: in_one_f
  doc: "Specify annotation fields to copy from head records\ninto assembled record.\
    \ (default: None)"
  type: string[]
  inputBinding:
    prefix: --1f
- id: in_two_f
  doc: "Specify annotation fields to copy from tail records\ninto assembled record.\
    \ (default: None)"
  type: string[]
  inputBinding:
    prefix: --2f
- id: in_gap
  doc: "Number of N characters to place between ends.\n(default: 0)\n"
  type: long
  inputBinding:
    prefix: --gap
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- AssemblePairs.py
- join
