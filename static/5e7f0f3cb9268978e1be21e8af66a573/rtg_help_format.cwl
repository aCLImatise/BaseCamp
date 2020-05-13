class: CommandLineTool
id: rtg_help_format.cwl
inputs:
- id: duster
  doc: treat lower case residues as unknowns
  type: boolean
  inputBinding:
    prefix: --duster
- id: exclude
  doc: exclude input sequences based on their name. If the input sequence contains
    the specified string then that sequence is excluded from the SDF. May be specified
    0 or more times
  type: string
  inputBinding:
    prefix: --exclude
- id: select_read_group
  doc: when formatting from SAM/BAM input, only include reads with this read group
    ID
  type: string
  inputBinding:
    prefix: --select-read-group
- id: trim_threshold
  doc: trim read ends to maximise base quality above the given threshold
  type: long
  inputBinding:
    prefix: --trim-threshold
- id: allow_duplicate_names
  doc: disable checking for duplicate sequence names
  type: boolean
  inputBinding:
    prefix: --allow-duplicate-names
- id: no_names
  doc: do not include name data in the SDF output
  type: boolean
  inputBinding:
    prefix: --no-names
- id: no_quality
  doc: do not include quality data in the SDF output
  type: boolean
  inputBinding:
    prefix: --no-quality
- id: sam_rg
  doc: '|FILE       file containing a single valid read group SAM header line or a
    string in the form "@RG\tID:READGROUP1\tSM:BACT_SAMPLE\tPL:ILLUMINA"'
  type: string
  inputBinding:
    prefix: --sam-rg
outputs: []
cwlVersion: v1.1
baseCommand:
- rtg
- help
- format
