class: CommandLineTool
id: SplitSeq.py_sort.cwl
inputs:
- id: in_list_fastafastq_files
  doc: "A list of FASTA/FASTQ files containing sequences to\nprocess. (default: None)"
  type: string[]
  inputBinding:
    prefix: -s
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
- id: in_annotation_field_sort
  doc: "The annotation field to sort sequences by. (default:\nNone)"
  type: string?
  inputBinding:
    prefix: -f
- id: in_maximum_number_none
  doc: "Maximum number of sequences in each new file.\n(default: None)"
  type: long?
  inputBinding:
    prefix: -n
- id: in_num
  doc: "Specify to define the sort field as numeric rather\nthan textual. (default:\
    \ False)\n"
  type: boolean?
  inputBinding:
    prefix: --num
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- SplitSeq.py
- sort
