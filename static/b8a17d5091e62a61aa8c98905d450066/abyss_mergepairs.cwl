class: CommandLineTool
id: ../../../abyss_mergepairs.cwl
inputs:
- id: prefix
  doc: the prefix of all output files [out]
  type: string
  inputBinding:
    prefix: --prefix
- id: identity
  doc: minimum overlap identity [0.9]
  type: string
  inputBinding:
    prefix: --identity
- id: matches
  doc: minimum number of matches in overlap [10]
  type: string
  inputBinding:
    prefix: --matches
- id: length_one
  doc: trim bases from 3' end of first read down to a maximum of N bp long [inf]
  type: string
  inputBinding:
    prefix: --length1
- id: length_two
  doc: trim bases from 3' end of second read down to a maximum of N bp long [inf]
  type: string
  inputBinding:
    prefix: --length2
- id: chastity
  doc: discard unchaste reads [default]
  type: boolean
  inputBinding:
    prefix: --chastity
- id: no_chastity
  doc: do not discard unchaste reads
  type: boolean
  inputBinding:
    prefix: --no-chastity
- id: trim_masked
  doc: trim masked bases from the ends of reads
  type: boolean
  inputBinding:
    prefix: --trim-masked
- id: no_trim_masked
  doc: do not trim masked bases from the ends of reads [default]
  type: boolean
  inputBinding:
    prefix: --no-trim-masked
- id: trim_quality
  doc: trim bases from the ends of reads whose quality is less than the threshold
  type: string
  inputBinding:
    prefix: --trim-quality
- id: standard_quality
  doc: zero quality is `!' (33) default for FASTQ and SAM files
  type: boolean
  inputBinding:
    prefix: --standard-quality
- id: illumina_quality
  doc: zero quality is `@' (64) default for qseq and export files
  type: boolean
  inputBinding:
    prefix: --illumina-quality
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- abyss-mergepairs
