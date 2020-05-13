class: CommandLineTool
id: gvcf_regions.py.cwl
inputs:
- id: gvc_f
  doc: input gvcf file
  type: string
  inputBinding:
    position: 0
- id: unreported_is_called
  doc: use this flag to treat unreported sites as called
  type: boolean
  inputBinding:
    prefix: --unreported_is_called
- id: ignore_phrases
  doc: list of phrases considered as discarded, e.g., CNV, ME. A line that contains
    any of the ignore phrases is discarded.
  type: string[]
  inputBinding:
    prefix: --ignore_phrases
- id: min_gq
  doc: minimum GQ (Genotype Quality) considered as called
  type: long
  inputBinding:
    prefix: --min_GQ
- id: min_qual
  doc: minimum QUAL considered as called
  type: long
  inputBinding:
    prefix: --min_QUAL
- id: pass_phrases
  doc: list of phrases considered as called, e.g., PASS, REFCALL. A line must contain
    any of the pass phrases to be considered as called.
  type: string[]
  inputBinding:
    prefix: --pass_phrases
- id: gvc_f_type
  doc: "type of gvcf output. [unreported_is_called, ignore_phrases, min_GQ, min_QUAL,\
    \ pass_phrases] presets: complete_genomics: [True, ['CNV', 'INS:ME'], None, None,\
    \ ['PASS']]. freebayes: [False, None, None, None, ['PASS']]. gatk: [False, None,\
    \ 5, None, None]. platypus: [False, None, None, None, ['PASS', 'REFCALL']]."
  type: string
  inputBinding:
    prefix: --gvcf_type
outputs: []
cwlVersion: v1.1
baseCommand:
- gvcf_regions.py
