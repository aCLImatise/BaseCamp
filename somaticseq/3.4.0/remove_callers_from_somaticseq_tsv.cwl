#!/usr/bin/env cwl-runner

baseCommand:
- remove_callers_from_somaticseq_tsv.py
class: CommandLineTool
cwlVersion: v1.0
id: remove_callers_from_somaticseq_tsv.py
