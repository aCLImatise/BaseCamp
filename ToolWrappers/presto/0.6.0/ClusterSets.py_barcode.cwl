class: CommandLineTool
id: ClusterSets.py_barcode.cwl
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
- id: in_name_add_information
  doc: "The name of the output annotation field to add with\nthe cluster information\
    \ for each sequence. (default:\nCLUSTER)"
  type: string
  inputBinding:
    prefix: -k
- id: in_ident
  doc: "The sequence identity threshold to use for clustering.\nNote, how identity\
    \ is calculated is specific to the\nclustering application used. (default: 0.9)"
  type: double
  inputBinding:
    prefix: --ident
- id: in_length
  doc: "The minimum allowed shorter/longer sequence length\nratio allowed within a\
    \ cluster. Setting this value to\n1.0 will require identical length matches within\n\
    clusters. A value of 0.0 will allow clusters\ncontaining any length of substring.\
    \ (default: 0.0)"
  type: long
  inputBinding:
    prefix: --length
- id: in_prefix
  doc: "A string to use as the prefix for each cluster\nidentifier. By default, cluster\
    \ identifiers will be\nnumeric values only. (default: )"
  type: string
  inputBinding:
    prefix: --prefix
- id: in_cluster
  doc: "The clustering tool to use for assigning clusters.\nMust be one of usearch,\
    \ vsearch or cd-hit-est. Note,\nfor cd-hit-est the maximum memory limit is set\
    \ to 3GB.\n(default: usearch)"
  type: string
  inputBinding:
    prefix: --cluster
- id: in_exec
  doc: "The name or path of the usearch, vsearch or cd-hit-est\nexecutable. (default:\
    \ None)"
  type: File
  inputBinding:
    prefix: --exec
- id: in_annotation_field_containing
  doc: "The annotation field containing barcode sequences.\n(default: BARCODE)\n"
  type: string
  inputBinding:
    prefix: -f
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ClusterSets.py
- barcode
