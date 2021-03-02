class: CommandLineTool
id: SplitSeq.py_sample.cwl
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
- id: in_maximum_number_sample
  doc: "Maximum number of sequences to sample from each file,\nfield or annotation\
    \ set. The default behavior, without\nthe -f argument, is to sample from the complete\
    \ set of\nsequences in the input file. (default: None)"
  type: long[]
  inputBinding:
    prefix: -n
- id: in_annotation_field_sampling
  doc: "The annotation field for sampling criteria. If the -u\nargument is not also\
    \ specified, then sampling will be\nperformed for each unique annotation value\
    \ in the\ndeclared field separately. (default: None)"
  type: string?
  inputBinding:
    prefix: -f
- id: in_specified_sampling_restricted
  doc: "If specified, sampling will be restricted to sequences\nthat contain one of\
    \ the declared annotation values in\nthe specified field. Requires the -f argument.\n\
    (default: None)\n"
  type: string[]
  inputBinding:
    prefix: -u
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- SplitSeq.py
- sample
