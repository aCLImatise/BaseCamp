#!/usr/bin/env cwl-runner

baseCommand:
- gaas_fasta_checkProteins.pl
class: CommandLineTool
cwlVersion: v1.0
id: gaas_fasta_checkproteins.pl
inputs:
- doc: Input fasta file that will be read. In general come from gffread output.
  id: ref_file
  inputBinding:
    prefix: --reffile
  type: string
- doc: By default the result is written on screen at te fly. If you give an output
    it will writte the report in this file.
  id: output
  inputBinding:
    prefix: --output
  type: string
