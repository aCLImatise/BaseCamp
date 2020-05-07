class: CommandLineTool
id: SVmerge.cwl
inputs:
- id: prefix
  doc: 'Specify a prefix to be used to create output file names: files of distance
    metric values will be named "prefix.distances" and the output, clustered VCF file
    will be named "prefix.clustered.vcf".'
  type: boolean
  inputBinding:
    prefix: --prefix
- id: variants
  doc: Specify the path to a VCF file of variants to merge. These variants will be
    considered in combination with any specified using the --fof option.
  type: boolean
  inputBinding:
    prefix: --variants
- id: f_of
  doc: Specify the path to a file of files with paths to VCF files of variants to
    merge. These variants will be considered in combination with any specified using
    the --variants option.
  type: boolean
  inputBinding:
    prefix: --fof
- id: max_dist
  doc: Specify the maximum distance in bases between the positions of SVs that can
    be merged.
  type: boolean
  inputBinding:
    prefix: --maxdist
- id: variant_delimiter
  doc: Specify the ASCII character to be used as a delimiter when forming clusters.
    This must be a character that is not contained in any of the cluster IDs in order
    for SVmerge to give reliable results.
  type: boolean
  inputBinding:
    prefix: --variantdelimiter
outputs: []
cwlVersion: v1.1
baseCommand:
- SVmerge
