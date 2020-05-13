class: CommandLineTool
id: abyss_fac.cwl
inputs:
- id: genome_size
  doc: expected genome size. Used to calculate NG50 and associated stats [disabled]
  type: string
  inputBinding:
    prefix: --genome-size
- id: min_length
  doc: ignore sequences shorter than N bp [500]
  type: string
  inputBinding:
    prefix: --min-length
- id: delimiter
  doc: use S for the field delimiter [\t]
  type: string
  inputBinding:
    prefix: --delimiter
- id: jira
  doc: output JIRA format
  type: boolean
  inputBinding:
    prefix: --jira
- id: mmd
  doc: output MultiMarkdown format
  type: boolean
  inputBinding:
    prefix: --mmd
- id: chastity
  doc: discard unchaste sequences [default]
  type: boolean
  inputBinding:
    prefix: --chastity
- id: no_chastity
  doc: do not discard unchaste sequences
  type: boolean
  inputBinding:
    prefix: --no-chastity
- id: trim_masked
  doc: trim masked bases from the end
  type: boolean
  inputBinding:
    prefix: --trim-masked
- id: no_trim_masked
  doc: do not trim masked bases from the ends of sequences [default]
  type: boolean
  inputBinding:
    prefix: --no-trim-masked
- id: count_am_big
  doc: count ambiguity codes in sequences
  type: boolean
  inputBinding:
    prefix: --count-ambig
- id: no_count_am_big
  doc: do not count ambiguity codes in sequences [default]
  type: boolean
  inputBinding:
    prefix: --no-count-ambig
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- abyss-fac
