#!/usr/bin/env cwl-runner

baseCommand:
- gvcf_regions.py
class: CommandLineTool
cwlVersion: v1.0
id: gvcf_regions.py
inputs:
- doc: input gvcf file
  id: gvc_f
  inputBinding:
    position: 0
  type: string
- doc: use this flag to treat unreported sites as called
  id: unreported_is_called
  inputBinding:
    prefix: --unreported_is_called
  type: boolean
- doc: list of phrases considered as discarded, e.g., CNV, ME. A line that contains
    any of the ignore phrases is discarded.
  id: ignore_phrases
  inputBinding:
    prefix: --ignore_phrases
  type:
    items: string
    type: array
- doc: minimum GQ (Genotype Quality) considered as called
  id: min_gq
  inputBinding:
    prefix: --min_GQ
  type: long
- doc: minimum QUAL considered as called
  id: min_qual
  inputBinding:
    prefix: --min_QUAL
  type: long
- doc: list of phrases considered as called, e.g., PASS, REFCALL. A line must contain
    any of the pass phrases to be considered as called.
  id: pass_phrases
  inputBinding:
    prefix: --pass_phrases
  type:
    items: string
    type: array
- doc: "type of gvcf output. [unreported_is_called, ignore_phrases, min_GQ, min_QUAL,\
    \ pass_phrases] presets: complete_genomics: [True, ['CNV', 'INS:ME'], None, None,\
    \ ['PASS']]. freebayes: [False, None, None, None, ['PASS']]. gatk: [False, None,\
    \ 5, None, None]. platypus: [False, None, None, None, ['PASS', 'REFCALL']]."
  id: gvc_f_type
  inputBinding:
    prefix: --gvcf_type
  type: string
