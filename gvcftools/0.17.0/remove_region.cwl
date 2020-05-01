#!/usr/bin/env cwl-runner

baseCommand:
- remove_region
class: CommandLineTool
cwlVersion: v1.0
id: remove_region
inputs:
- doc: A bed file specifying regions which should be excluded  from the gVCF. Any
    records contained in the excluded  region will be removed, and any boundary non-refernece  blocks
    will be altered to remove segments overlapping  the excluded region (required)
  id: region_file
  inputBinding:
    prefix: --region-file
  type: string
- doc: samtools reference sequence (required)
  id: ref
  inputBinding:
    prefix: --ref
  type: string
