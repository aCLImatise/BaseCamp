class: CommandLineTool
id: ConvertDb.py_genbank.cwl
inputs:
- id: d
  doc: 'A list of tab delimited database files. (default: None)'
  type: string[]
  inputBinding:
    prefix: -d
- id: o
  doc: 'Explicit output file name. Note, this argument cannot be used with the --failed,
    --outdir, or --outname arguments. If unspecified, then the output filename will
    be based on the input filename(s). (default: None)'
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
- id: format
  doc: 'Specify input and output format. (default: changeo)'
  type: string
  inputBinding:
    prefix: --format
- id: mol
  doc: 'The source molecule type. Usually one of "mRNA" or "genomic DNA". (default:
    mRNA)'
  type: string
  inputBinding:
    prefix: --mol
- id: product
  doc: 'The product name, such as "immunoglobulin heavy chain". (default: immunoglobulin
    heavy chain)'
  type: string
  inputBinding:
    prefix: --product
- id: db
  doc: 'Name of the reference database used for alignment. Usually "IMGT/GENE-DB".
    (default: None)'
  type: string
  inputBinding:
    prefix: --db
- id: inf
  doc: 'Name and version of the inference tool used for reference alignment in the
    form tool:version. (default: None)'
  type: string
  inputBinding:
    prefix: --inf
- id: organism
  doc: 'The scientific name of the organism. (default: None)'
  type: string
  inputBinding:
    prefix: --organism
- id: sex
  doc: 'If specified, adds the given sex annotation to the fasta headers. (default:
    None)'
  type: string
  inputBinding:
    prefix: --sex
- id: isolate
  doc: 'If specified, adds the given isolate annotation (sample label) to the fasta
    headers. (default: None)'
  type: string
  inputBinding:
    prefix: --isolate
- id: tissue
  doc: 'If specified, adds the given tissue-type annotation to the fasta headers.
    (default: None)'
  type: string
  inputBinding:
    prefix: --tissue
- id: cell_type
  doc: 'If specified, adds the given cell-type annotation to the fasta headers. (default:
    None)'
  type: string
  inputBinding:
    prefix: --cell-type
- id: y
  doc: "A yaml file specifying sample features (BioSample attributes) in the form\
    \ 'variable: value'. If specified, any features provided in the yaml file will\
    \ override those provided at the commandline. Note, this config file applies to\
    \ sample features only and cannot be used for required source features such as\
    \ the --product or --mol argument. (default: None)"
  type: string
  inputBinding:
    prefix: -y
- id: label
  doc: 'If specified, add a field name to the sequence identifier. Sequence identifiers
    will be output in the form <label>=<id>. (default: None)'
  type: string
  inputBinding:
    prefix: --label
- id: cf
  doc: 'Field containing the C region call. If unspecified, the C region gene call
    will be excluded from the feature table. (default: None)'
  type: string
  inputBinding:
    prefix: --cf
- id: nf
  doc: 'If specified, use the provided column to add the AIRR_READ_COUNT note to the
    feature table. (default: None)'
  type: string
  inputBinding:
    prefix: --nf
- id: if
  doc: 'If specified, use the provided column to add the AIRR_CELL_INDEX note to the
    feature table. (default: None)'
  type: string
  inputBinding:
    prefix: --if
- id: allow_stop
  doc: 'If specified, retain records in the output with stop codons in the junction
    region. In such records the CDS will be removed and replaced with a similar misc_feature
    in the feature table. (default: False)'
  type: boolean
  inputBinding:
    prefix: --allow-stop
- id: as_is_id
  doc: 'If specified, use the existing sequence identifier for the output identifier.
    By default, only the row number will be used as the identifier to avoid the 50
    character limit. (default: False)'
  type: boolean
  inputBinding:
    prefix: --asis-id
- id: as_is_calls
  doc: 'Specify to prevent alleles from being parsed using the IMGT nomenclature.
    Note, this requires the gene assignments to be exact matches to valid records
    in the references database specified by the --db argument. (default: False)'
  type: boolean
  inputBinding:
    prefix: --asis-calls
- id: allele_delim
  doc: 'The delimiter to use for splitting the gene name from the allele number. Note,
    this only applies when specifying --asis-calls. By default, this argument will
    be ignored and allele numbers extracted under the expectation of IMGT nomenclature
    consistency. (default: *)'
  type: string
  inputBinding:
    prefix: --allele-delim
- id: asn
  doc: 'If specified, run tbl2asn to generate the .sqn submission file after making
    the .fsa and .tbl files. (default: False)'
  type: boolean
  inputBinding:
    prefix: --asn
- id: sbt
  doc: 'If provided along with --asn, use the specified file for the template file
    argument to tbl2asn. (default: None)'
  type: string
  inputBinding:
    prefix: --sbt
- id: exec
  doc: 'The name or location of the tbl2asn executable. (default: tbl2asn)'
  type: string
  inputBinding:
    prefix: --exec
outputs: []
cwlVersion: v1.1
baseCommand:
- ConvertDb.py
- genbank
