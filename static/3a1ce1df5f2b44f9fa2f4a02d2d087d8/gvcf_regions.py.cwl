class: CommandLineTool
id: gvcf_regions.py.cwl
inputs:
- id: in_unreported_is_called
  doc: use this flag to treat unreported sites as called
  type: boolean?
  inputBinding:
    prefix: --unreported_is_called
- id: in_ignore_phrases
  doc: "list of phrases considered as discarded, e.g., CNV,\nME. A line that contains\
    \ any of the ignore phrases is\ndiscarded."
  type: string[]
  inputBinding:
    prefix: --ignore_phrases
- id: in_min_gq
  doc: minimum GQ (Genotype Quality) considered as called
  type: string?
  inputBinding:
    prefix: --min_GQ
- id: in_min_qual
  doc: minimum QUAL considered as called
  type: long?
  inputBinding:
    prefix: --min_QUAL
- id: in_pass_phrases
  doc: "list of phrases considered as called, e.g., PASS,\nREFCALL. A line must contain\
    \ any of the pass phrases\nto be considered as called."
  type: string[]
  inputBinding:
    prefix: --pass_phrases
- id: in_gvc_f_type
  doc: "type of gvcf output. [unreported_is_called,\nignore_phrases, min_GQ, min_QUAL,\
    \ pass_phrases]\npresets: complete_genomics: [True, ['CNV', 'INS:ME'],\nNone,\
    \ None, ['PASS']]. freebayes: [False, None, None,\nNone, ['PASS']]. gatk: [False,\
    \ None, 5, None, None].\nplatypus: [False, None, None, None, ['PASS',\n'REFCALL']].\n"
  type: string?
  inputBinding:
    prefix: --gvcf_type
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gvcf_regions.py
