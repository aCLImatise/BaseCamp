class: CommandLineTool
id: remove_region.cwl
inputs:
- id: in_region_file
  doc: "A bed file specifying regions which should be excluded\nfrom the gVCF. Any\
    \ records contained in the excluded\nregion will be removed, and any boundary\
    \ non-refernece\nblocks will be altered to remove segments overlapping\nthe excluded\
    \ region (required)"
  type: File?
  inputBinding:
    prefix: --region-file
- id: in_ref
  doc: samtools reference sequence (required)
  type: string?
  inputBinding:
    prefix: --ref
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- remove_region
