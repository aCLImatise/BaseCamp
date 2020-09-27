class: CommandLineTool
id: SVmerge.cwl
inputs:
- id: in_prefix
  doc: "Specify a prefix to be used to create output file names: files of\ndistance\
    \ metric values will be named \"prefix.distances\" and the\noutput, clustered\
    \ VCF file will be named \"prefix.clustered.vcf\"."
  type: File
  inputBinding:
    prefix: --prefix
- id: in_variants
  doc: "Specify the path to a VCF file of variants to merge. These variants\nwill\
    \ be considered in combination with any specified using the --fof\noption."
  type: boolean
  inputBinding:
    prefix: --variants
- id: in_f_of
  doc: "Specify the path to a file of files with paths to VCF files of\nvariants to\
    \ merge. These variants will be considered in combination\nwith any specified\
    \ using the --variants option."
  type: boolean
  inputBinding:
    prefix: --fof
- id: in_max_dist
  doc: "Specify the maximum distance in bases between the positions of SVs\nthat can\
    \ be merged."
  type: boolean
  inputBinding:
    prefix: --maxdist
- id: in_variant_delimiter
  doc: "Specify the ASCII character to be used as a delimiter when forming\nclusters.\
    \ This must be a character that is not contained in any of\nthe cluster IDs in\
    \ order for SVmerge to give reliable results.\n"
  type: boolean
  inputBinding:
    prefix: --variantdelimiter
- id: in_distance_file
  doc: ''
  type: File
  inputBinding:
    prefix: --distance_file
- id: in_ref
  doc: ''
  type: File
  inputBinding:
    prefix: --ref
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_prefix
  doc: "Specify a prefix to be used to create output file names: files of\ndistance\
    \ metric values will be named \"prefix.distances\" and the\noutput, clustered\
    \ VCF file will be named \"prefix.clustered.vcf\"."
  type: File
  outputBinding:
    glob: $(inputs.in_prefix)
cwlVersion: v1.1
baseCommand:
- SVmerge
