class: CommandLineTool
id: vtools_report_discordance_rate.cwl
inputs:
- id: in_samples_dot
  doc: command output a n by n matrix with sample names in the
  type: string
  inputBinding:
    prefix: --samples.
- id: in_limiting_variants_samples
  doc: "[SAMPLES [SAMPLES ...]], --samples [SAMPLES [SAMPLES ...]]\nLimiting variants\
    \ from samples that match conditions\nthat use columns shown in command 'vtools\
    \ show sample'\n(e.g. 'aff=1', 'filename like \"MG%\"')."
  type: boolean
  inputBinding:
    prefix: -s
- id: in_variants
  doc: "Limit variants to specified variant table. Default to\nall variants."
  type: string
  inputBinding:
    prefix: --variants
- id: in_genotypes
  doc: "[GENOTYPES [GENOTYPES ...]]\nLimiting genotypes from samples that match conditions\n\
    that involves genotype fields (e.g. filter by quality\nscore, with fields shown\
    \ in command 'vtools show\ngenotypes'). If a variant is filtered for one sample\n\
    but not another, it will be included if runtime option\n$treat_missing_as_wildtype\
    \ is set to True, and\ndiscarded otherwise."
  type: boolean
  inputBinding:
    prefix: --genotypes
- id: in_verbosity
  doc: "Output error and warning (0), info (1), debug (2) and\ntrace (3) information\
    \ to standard output (default to\n1).\n"
  type: string
  inputBinding:
    prefix: --verbosity
- id: in_samples
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- vtools_report
- discordance_rate
