class: CommandLineTool
id: ParseHeaders.py_merge.cwl
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
- id: in_list_merge_default
  doc: 'List of fields to merge. (default: None)'
  type: string[]
  inputBinding:
    prefix: -f
- id: in_name_field_is
  doc: "Name for the merged field. If the new field is already\npresent, the merged\
    \ fields will be merged into the\nexisting field. (default: None)"
  type: string?
  inputBinding:
    prefix: -k
- id: in_act
  doc: "List of collapse actions to take on the new field\nfollowing the merge defining\
    \ how to combine the\nannotations into a single value. The actions \"min\",\n\"\
    max\", \"sum\" perform the corresponding mathematical\noperation on numeric annotations.\
    \ The action \"set\"\ncollapses annotations into a comma delimited list of\nunique\
    \ values. The action \"cat\" concatenates the\nvalues together into a single string.\
    \ (default: None)"
  type: string?
  inputBinding:
    prefix: --act
- id: in_delete
  doc: "If specified, delete the field that were merged from\nthe output header. (default:\
    \ False)\n"
  type: boolean?
  inputBinding:
    prefix: --delete
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ParseHeaders.py
- merge
