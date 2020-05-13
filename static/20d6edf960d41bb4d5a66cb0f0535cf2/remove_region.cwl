class: CommandLineTool
id: remove_region.cwl
inputs:
- id: region_file
  doc: A bed file specifying regions which should be excluded  from the gVCF. Any
    records contained in the excluded  region will be removed, and any boundary non-refernece  blocks
    will be altered to remove segments overlapping  the excluded region (required)
  type: string
  inputBinding:
    prefix: --region-file
- id: ref
  doc: samtools reference sequence (required)
  type: string
  inputBinding:
    prefix: --ref
outputs: []
cwlVersion: v1.1
baseCommand:
- remove_region
