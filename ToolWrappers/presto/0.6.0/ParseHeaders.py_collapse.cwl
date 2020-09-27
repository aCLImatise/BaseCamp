class: CommandLineTool
id: ParseHeaders.py_collapse.cwl
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
  type: File
  inputBinding:
    prefix: --outdir
- id: in_out_name
  doc: "Changes the prefix of the successfully processed\noutput file to the string\
    \ specified. May not be\nspecified with multiple input files. (default: None)"
  type: File
  inputBinding:
    prefix: --outname
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
- id: in_list_collapse_default
  doc: 'List of fields to collapse. (default: None)'
  type: string[]
  inputBinding:
    prefix: -f
- id: in_act
  doc: "[{min,max,sum,first,last,set,cat} ...]\nList of actions to take for each field\
    \ defining how\neach annotation will be combined into a single value.\nThe actions\
    \ \"min\", \"max\", \"sum\" perform the\ncorresponding mathematical operation\
    \ on numeric\nannotations. The actions \"first\" and \"last\" choose the\nvalue\
    \ from the corresponding position in the\nannotation. The action \"set\" collapses\
    \ annotations\ninto a comma delimited list of unique values. The\naction \"cat\"\
    \ concatenates the values together into a\nsingle string. (default: None)\n"
  type: string
  inputBinding:
    prefix: --act
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ParseHeaders.py
- collapse
