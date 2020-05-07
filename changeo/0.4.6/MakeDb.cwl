class: CommandLineTool
id: MakeDb.py_ihmm.cwl
inputs:
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
- id: log
  doc: 'Specify to write verbose logging to a file. May not be specified with multiple
    input files. (default: None)'
  type: string
  inputBinding:
    prefix: --log
- id: failed
  doc: 'If specified create files containing records that fail processing. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --failed
- id: format
  doc: 'Specify input and output format. (default: changeo)'
  type: string
  inputBinding:
    prefix: --format
- id: as_is_id
  doc: 'Specify to prevent input sequence headers from being parsed to add new columns
    to database. Parsing of sequence headers requires headers to be in the pRESTO
    annotation format, so this should be specified when sequence headers are incompatible
    with the pRESTO annotation scheme. Note, unrecognized header formats will default
    to this behavior. (default: False)'
  type: boolean
  inputBinding:
    prefix: --asis-id
- id: partial
  doc: 'If specified, include incomplete V(D)J alignments in the pass file instead
    of the fail file. An incomplete alignment is defined as a record for which a valid
    IMGT-gapped sequence cannot be built or that is missing a V gene assignment, J
    gene assignment, junction region, or productivity call. (default: False)'
  type: boolean
  inputBinding:
    prefix: --partial
- id: extended
  doc: 'Specify to include additional aligner specific fields in the output. Adds
    the path score of the iHMMune- Align hidden Markov model as VDJ_SCORE; FWR1_IMGT,
    FWR2_IMGT, FWR3_IMGT, and FWR4_IMGT; CDR1_IMGT, CDR2_IMGT, and CDR3_IMGT. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --extended
outputs: []
cwlVersion: v1.1
baseCommand:
- MakeDb.py
- ihmm
