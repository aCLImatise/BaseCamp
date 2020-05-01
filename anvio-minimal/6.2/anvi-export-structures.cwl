#!/usr/bin/env cwl-runner

baseCommand:
- anvi-export-structures
class: CommandLineTool
cwlVersion: v1.0
id: anvi-export-structures
inputs:
- doc: Anvi'o structure database.
  id: structure_db
  inputBinding:
    prefix: --structure-db
  type: string
- doc: Directory path for output files
  id: output_dir
  inputBinding:
    prefix: --output-dir
  type: string
- doc: Gene caller ids. Multiple of them can be declared separated by a delimiter
    (the default is a comma). In anvi-gen-variability-profile, if you declare nothing
    you will get all genes matching your other filtering criteria. In other programs,
    you may get everything, nothing, or an error. It really depends on the situation.
    Fortunately, mistakes are cheap, so it's worth a try.
  id: gene_caller_ids
  inputBinding:
    prefix: --gene-caller-ids
  type: string
- doc: A file with anvi'o gene caller IDs. There should be only one column in the
    file, and each line should correspond to a unique gene caller id (without a column
    header).
  id: genes_of_interest
  inputBinding:
    prefix: --genes-of-interest
  type: File
