class: CommandLineTool
id: SplitSeq.py_samplepair.cwl
inputs:
- id: in_ordered_list_containingheadprimary
  doc: "An ordered list of FASTA/FASTQ files containing\nhead/primary sequences. (default:\
    \ None)"
  type: long[]
  inputBinding:
    prefix: '-1'
- id: in_ordered_list_containingtailsecondary
  doc: "An ordered list of FASTA/FASTQ files containing\ntail/secondary sequences.\
    \ (default: None)"
  type: long[]
  inputBinding:
    prefix: '-2'
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
  doc: "Maximum number of paired sequences to sample from each\nset of files, fields\
    \ or annotations. The default\nbehavior, without the -f argument, is to sample\
    \ from\nthe complete set of paired sequences in the input\nfiles. (default: None)"
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
    (default: None)"
  type: string[]
  inputBinding:
    prefix: -u
- id: in_coord
  doc: "The format of the sequence identifier which defines\nshared coordinate information\
    \ across paired read\nfiles. (default: presto)\n"
  type: string?
  inputBinding:
    prefix: --coord
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/presto:0.6.2--py_0
cwlVersion: v1.1
baseCommand:
- SplitSeq.py
- samplepair
