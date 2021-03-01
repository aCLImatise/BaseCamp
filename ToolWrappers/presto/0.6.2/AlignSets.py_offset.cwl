class: CommandLineTool
id: AlignSets.py_offset.cwl
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
- id: in_delim
  doc: "DELIMITER DELIMITER\nA list of the three delimiters that separate\nannotation\
    \ blocks, field names and values, and values\nwithin a field, respectively. (default:\
    \ ('|', '=',\n','))"
  type: string?
  inputBinding:
    prefix: --delim
- id: in_nproc
  doc: "The number of simultaneous computational processes to\nexecute (CPU cores\
    \ to utilized). (default: 8)"
  type: long?
  inputBinding:
    prefix: --nproc
- id: in_tab_delimited_file
  doc: "The tab delimited file of offset tags and values.\n(default: None)"
  type: File?
  inputBinding:
    prefix: -d
- id: in_bf
  doc: "The annotation field containing barcode labels for\nsequence grouping. (default:\
    \ BARCODE)"
  type: string?
  inputBinding:
    prefix: --bf
- id: in_pf
  doc: "The primer field to use for offset assignment.\n(default: PRIMER)"
  type: string?
  inputBinding:
    prefix: --pf
- id: in_mode
  doc: "Specifies whether or align sequence by padding with\ngaps or by cutting the\
    \ 5' sequence to a common start\nposition. (default: pad)"
  type: string?
  inputBinding:
    prefix: --mode
- id: in_div
  doc: "Specify to calculate nucleotide diversity of each set\n(average pairwise error\
    \ rate). (default: False)\n"
  type: boolean?
  inputBinding:
    prefix: --div
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/presto:0.6.2--py_0
cwlVersion: v1.1
baseCommand:
- AlignSets.py
- offset
