class: CommandLineTool
id: rtg_vcfmerge.cwl
inputs:
- id: in_bed_regions
  doc: "if set, only read VCF records that overlap the\nranges contained in the specified\
    \ BED file"
  type: File?
  inputBinding:
    prefix: --bed-regions
- id: in_input_list_file
  doc: "file containing a list of VCF format files (1\nper line) to be merged"
  type: File?
  inputBinding:
    prefix: --input-list-file
- id: in_output_vcf_file
  doc: output VCF file. Use '-' to write to standard
  type: File?
  inputBinding:
    prefix: --output
- id: in_add_header
  doc: "|FILE file containing VCF header lines to add, or a\nliteral header line.\
    \ May be specified 0 or more\ntimes"
  type: File?
  inputBinding:
    prefix: --add-header
- id: in_force_merge
  doc: "allow merging of specified header ID even when\ndescriptions do not match.\
    \ May be specified 0 or\nmore times, or as a comma separated list"
  type: long?
  inputBinding:
    prefix: --force-merge
- id: in_force_merge_all
  doc: attempt merging of all non-matching header
  type: boolean?
  inputBinding:
    prefix: --force-merge-all
- id: in_no_gzip
  doc: do not gzip the output
  type: boolean?
  inputBinding:
    prefix: --no-gzip
- id: in_no_header
  doc: prevent VCF header from being written
  type: boolean?
  inputBinding:
    prefix: --no-header
- id: in_no_merge_alts
  doc: do not merge multiple records if the ALTs are
  type: boolean?
  inputBinding:
    prefix: --no-merge-alts
- id: in_preserve_formats
  doc: "do not merge multiple records containing\nunmergeable FORMAT fields (Default\
    \ is to remove\nthose FORMAT fields so the variants can be\ncombined)"
  type: boolean?
  inputBinding:
    prefix: --preserve-formats
- id: in_stats
  doc: output statistics for the merged VCF file
  type: File?
  inputBinding:
    prefix: --stats
- id: in__regionregion_set
  doc: --region=REGION          if set, only read VCF records within the
  type: string
  inputBinding:
    position: 0
- id: in_declarations
  doc: -h, --help                   print help on command-line flag usage
  type: string
  inputBinding:
    position: 0
- id: in_different
  doc: --no-merge-records       do not merge multiple records at the same
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_vcf_file
  doc: output VCF file. Use '-' to write to standard
  type: File?
  outputBinding:
    glob: $(inputs.in_output_vcf_file)
- id: out_stats
  doc: output statistics for the merged VCF file
  type: File?
  outputBinding:
    glob: $(inputs.in_stats)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rtg-tools:3.12--0
cwlVersion: v1.1
baseCommand:
- rtg
- vcfmerge
