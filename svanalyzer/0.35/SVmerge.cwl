#!/usr/bin/env cwl-runner

baseCommand:
- SVmerge
class: CommandLineTool
cwlVersion: v1.0
id: svmerge
inputs:
- doc: 'Specify a prefix to be used to create output file names: files of distance
    metric values will be named "prefix.distances" and the output, clustered VCF file
    will be named "prefix.clustered.vcf".'
  id: prefix
  inputBinding:
    prefix: --prefix
  type: boolean
- doc: Specify the path to a VCF file of variants to merge. These variants will be
    considered in combination with any specified using the --fof option.
  id: variants
  inputBinding:
    prefix: --variants
  type: boolean
- doc: Specify the path to a file of files with paths to VCF files of variants to
    merge. These variants will be considered in combination with any specified using
    the --variants option.
  id: f_of
  inputBinding:
    prefix: --fof
  type: boolean
- doc: Specify the maximum distance in bases between the positions of SVs that can
    be merged.
  id: max_dist
  inputBinding:
    prefix: --maxdist
  type: boolean
- doc: Specify the ASCII character to be used as a delimiter when forming clusters.
    This must be a character that is not contained in any of the cluster IDs in order
    for SVmerge to give reliable results.
  id: variant_delimiter
  inputBinding:
    prefix: --variantdelimiter
  type: boolean
