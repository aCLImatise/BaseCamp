#!/usr/bin/env cwl-runner

baseCommand:
- anvi-import-taxonomy-for-layers
class: CommandLineTool
cwlVersion: v1.0
id: anvi-import-taxonomy-for-layers
inputs:
- doc: Anvi'o profile database
  id: profile_db
  inputBinding:
    prefix: --profile-db
  type: string
- doc: "Parser to make sense of the input files. There are 1 parsers readily available:\
    \ ['krakenuniq']."
  id: parser
  inputBinding:
    prefix: --parser
  type: string
- doc: (S) [FILE(S) ...], --input-files FILE(S) [FILE(S) ...] Input file(s) for selected
    parser. Each parser (except "blank") requires input files to process that you
    generate before running anvio. Please see the documentation for details.
  id: i
  inputBinding:
    prefix: -i
  type: File
- doc: Short read-based taxonomy can be extremely noisy. Therefore, here we have defeault
    minimum percentage cutoff of 0.1% to eliminate any taxon that occurs less than
    that in a given input file.
  id: min_abundance
  inputBinding:
    prefix: --min-abundance
  type: string
