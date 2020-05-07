class: CommandLineTool
id: vtools_report_discordance_rate.cwl
inputs:
- id: s
  doc: "[SAMPLES [SAMPLES ...]], --samples [SAMPLES [SAMPLES ...]] Limiting variants\
    \ from samples that match conditions that use columns shown in command 'vtools\
    \ show sample' (e.g. 'aff=1', 'filename like \"MG%\"')."
  type: boolean
  inputBinding:
    prefix: -s
- id: variants
  doc: Limit variants to specified variant table. Default to all variants.
  type: string
  inputBinding:
    prefix: --variants
- id: genotypes
  doc: "[GENOTYPES [GENOTYPES ...]] Limiting genotypes from samples that match conditions\
    \ that involves genotype fields (e.g. filter by quality score, with fields shown\
    \ in command 'vtools show genotypes'). If a variant is filtered for one sample\
    \ but not another, it will be included if runtime option $treat_missing_as_wildtype\
    \ is set to True, and discarded otherwise."
  type: boolean
  inputBinding:
    prefix: --genotypes
- id: v
  doc: '{0,1,2,3}, --verbosity {0,1,2,3} Output error and warning (0), info (1), debug
    (2) and trace (3) information to standard output (default to 1).'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- vtools_report
- discordance_rate
