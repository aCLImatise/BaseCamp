class: CommandLineTool
id: bcftools_filter.cwl
inputs:
- id: in_vcf_gz
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: exclude
  doc: exclude sites for which the expression is true (see man page for details)
  type: string
  inputBinding:
    prefix: --exclude
- id: snp_gap
  doc: filter SNPs within <int> base pairs of an indel
  type: long
  inputBinding:
    prefix: --SnpGap
- id: in_del_gap
  doc: filter clusters of indels separated by <int> or fewer base pairs allowing only
    one to pass
  type: long
  inputBinding:
    prefix: --IndelGap
- id: include
  doc: include only sites for which the expression is true (see man page for details
  type: string
  inputBinding:
    prefix: --include
- id: mode
  doc: '[+x]               "+": do not replace but add to existing FILTER; "x": reset
    filters at sites which pass'
  type: boolean
  inputBinding:
    prefix: --mode
- id: no_version
  doc: do not append version and command line to the header
  type: boolean
  inputBinding:
    prefix: --no-version
- id: output
  doc: write output to a file [standard output]
  type: File
  inputBinding:
    prefix: --output
- id: output_type
  doc: '<b|u|z|v>   b: compressed BCF, u: uncompressed BCF, z: compressed VCF, v:
    uncompressed VCF [v]'
  type: boolean
  inputBinding:
    prefix: --output-type
- id: regions
  doc: restrict to comma-separated list of regions
  type: string
  inputBinding:
    prefix: --regions
- id: regions_file
  doc: restrict to regions listed in a file
  type: File
  inputBinding:
    prefix: --regions-file
- id: soft_filter
  doc: annotate FILTER column with <string> or unique filter name ("Filter%d") made
    up by the program ("+")
  type: string
  inputBinding:
    prefix: --soft-filter
- id: set_gts
  doc: <.|0>           set genotypes of failed samples to missing (.) or ref (0)
  type: boolean
  inputBinding:
    prefix: --set-GTs
- id: targets
  doc: similar to -r but streams rather than index-jumps
  type: string
  inputBinding:
    prefix: --targets
- id: targets_file
  doc: similar to -R but streams rather than index-jumps
  type: File
  inputBinding:
    prefix: --targets-file
- id: threads
  doc: use multithreading with <int> worker threads [0]
  type: long
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- bcftools
- filter
