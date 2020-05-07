class: CommandLineTool
id: filter_ref_identity.cwl
inputs:
- id: input
  doc: 'specify SAM file to be analysed (default: STDIN)'
  type: string
  inputBinding:
    prefix: --input
- id: discard
  doc: keep or discard entries passing the filter criteria?
  type: string
  inputBinding:
    prefix: --discard
- id: verbose
  doc: print additional information to stderr
  type: boolean
  inputBinding:
    prefix: --verbose
- id: debug
  doc: print debug messages to stderr
  type: boolean
  inputBinding:
    prefix: --debug
- id: modify
  doc: modify header by adding PG record
  type: boolean
  inputBinding:
    prefix: --modify
- id: min_reads
  doc: minimum percentage of reads with insufficient identity [50.0]
  type: long
  inputBinding:
    prefix: --min_reads
- id: max_reads
  doc: maximum percentage of reads with insufficient identity [100.0]
  type: long
  inputBinding:
    prefix: --max_reads
- id: min_identity
  doc: minimum percent identity [90.0]
  type: long
  inputBinding:
    prefix: --min_identity
- id: max_identity
  doc: maximum percent identity [100.0]
  type: long
  inputBinding:
    prefix: --max_identity
- id: no_deamination
  doc: do not treat possibly deaminated T>C and A>G pairs as mismatches in calculation
    of percent identity
  type: boolean
  inputBinding:
    prefix: --no_deamination
- id: no_indels
  doc: do not treat insertions and deletions in alignment as mismatches in calculation
    of percent identity
  type: boolean
  inputBinding:
    prefix: --no_indels
- id: no_unknown
  doc: do not treat Ns in alignment as mismatch in calculation of percent identity
  type: boolean
  inputBinding:
    prefix: --no_unknown
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_ref_identity
