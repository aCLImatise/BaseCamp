class: CommandLineTool
id: abyss_fac.cwl
inputs:
- id: in_genome_size
  doc: "expected genome size. Used to calculate NG50\nand associated stats [disabled]"
  type: long?
  inputBinding:
    prefix: --genome-size
- id: in_min_length
  doc: ignore sequences shorter than N bp [500]
  type: long?
  inputBinding:
    prefix: --min-length
- id: in_delimiter
  doc: use S for the field delimiter [\t]
  type: string?
  inputBinding:
    prefix: --delimiter
- id: in_jira
  doc: output JIRA format
  type: boolean?
  inputBinding:
    prefix: --jira
- id: in_mmd
  doc: output MultiMarkdown format
  type: boolean?
  inputBinding:
    prefix: --mmd
- id: in_chastity
  doc: discard unchaste sequences [default]
  type: boolean?
  inputBinding:
    prefix: --chastity
- id: in_no_chastity
  doc: do not discard unchaste sequences
  type: boolean?
  inputBinding:
    prefix: --no-chastity
- id: in_trim_masked
  doc: trim masked bases from the end
  type: boolean?
  inputBinding:
    prefix: --trim-masked
- id: in_no_trim_masked
  doc: "do not trim masked bases from the ends\nof sequences [default]"
  type: boolean?
  inputBinding:
    prefix: --no-trim-masked
- id: in_count_am_big
  doc: count ambiguity codes in sequences
  type: boolean?
  inputBinding:
    prefix: --count-ambig
- id: in_no_count_am_big
  doc: do not count ambiguity codes in sequences [default]
  type: boolean?
  inputBinding:
    prefix: --no-count-ambig
- id: in_verbose
  doc: display verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/abyss:2.2.5--ha4ec83a_0
cwlVersion: v1.1
baseCommand:
- abyss-fac
