class: CommandLineTool
id: ClusterSets.py_barcode.cwl
inputs:
- id: s
  doc: 'A list of FASTA/FASTQ files containing sequences to process. (default: None)'
  type: string[]
  inputBinding:
    prefix: -s
- id: o
  doc: 'Explicit output file name(s). Note, this argument cannot be used with the
    --failed, --outdir, or --outname arguments. If unspecified, then the output filename
    will be based on the input filename(s). (default: None)'
  type: string[]
  inputBinding:
    prefix: -o
- id: outdir
  doc: 'Specify to changes the output directory to the location specified. The input
    file directory is used if this is not specified. (default: None)'
  type: string
  inputBinding:
    prefix: --outdir
- id: out_name
  doc: 'Changes the prefix of the successfully processed output file to the string
    specified. May not be specified with multiple input files. (default: None)'
  type: string
  inputBinding:
    prefix: --outname
- id: fast_a
  doc: 'Specify to force output as FASTA rather than FASTQ. (default: None)'
  type: boolean
  inputBinding:
    prefix: --fasta
- id: delim
  doc: "DELIMITER DELIMITER A list of the three delimiters that separate annotation\
    \ blocks, field names and values, and values within a field, respectively. (default:\
    \ ('|', '=', ','))"
  type: string
  inputBinding:
    prefix: --delim
- id: nproc
  doc: 'The number of simultaneous computational processes to execute (CPU cores to
    utilized). (default: 8)'
  type: string
  inputBinding:
    prefix: --nproc
- id: k
  doc: 'The name of the output annotation field to add with the cluster information
    for each sequence. (default: CLUSTER)'
  type: string
  inputBinding:
    prefix: -k
- id: ident
  doc: 'The sequence identity threshold to use for clustering. Note, how identity
    is calculated is specific to the clustering application used. (default: 0.9)'
  type: string
  inputBinding:
    prefix: --ident
- id: length
  doc: 'The minimum allowed shorter/longer sequence length ratio allowed within a
    cluster. Setting this value to 1.0 will require identical length matches within
    clusters. A value of 0.0 will allow clusters containing any length of substring.
    (default: 0.0)'
  type: long
  inputBinding:
    prefix: --length
- id: prefix
  doc: 'A string to use as the prefix for each cluster identifier. By default, cluster
    identifiers will be numeric values only. (default: )'
  type: string
  inputBinding:
    prefix: --prefix
- id: cluster
  doc: 'The clustering tool to use for assigning clusters. Must be one of usearch,
    vsearch or cd-hit-est. Note, for cd-hit-est the maximum memory limit is set to
    3GB. (default: usearch)'
  type: string
  inputBinding:
    prefix: --cluster
- id: exec
  doc: 'The name or path of the usearch, vsearch or cd-hit-est executable. (default:
    None)'
  type: string
  inputBinding:
    prefix: --exec
- id: f
  doc: 'The annotation field containing barcode sequences. (default: BARCODE)'
  type: string
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- ClusterSets.py
- barcode
