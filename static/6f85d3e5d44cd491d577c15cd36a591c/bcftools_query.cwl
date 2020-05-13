class: CommandLineTool
id: bcftools_query.cwl
inputs:
- id: exclude
  doc: exclude sites for which the expression is true (see man page for details)
  type: string
  inputBinding:
    prefix: --exclude
- id: format
  doc: see man page for details
  type: string
  inputBinding:
    prefix: --format
- id: print_header
  doc: print header
  type: boolean
  inputBinding:
    prefix: --print-header
- id: include
  doc: select sites for which the expression is true (see man page for details)
  type: string
  inputBinding:
    prefix: --include
- id: list_samples
  doc: print the list of samples and exit
  type: boolean
  inputBinding:
    prefix: --list-samples
- id: output_file
  doc: output file name [stdout]
  type: File
  inputBinding:
    prefix: --output-file
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
- id: samples
  doc: list of samples to include
  type: string
  inputBinding:
    prefix: --samples
- id: samples_file
  doc: file of samples to include
  type: File
  inputBinding:
    prefix: --samples-file
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
- id: allow_undef_tags
  doc: print "." for undefined tags
  type: boolean
  inputBinding:
    prefix: --allow-undef-tags
- id: vcf_list
  doc: process multiple VCFs listed in the file
  type: File
  inputBinding:
    prefix: --vcf-list
outputs: []
cwlVersion: v1.1
baseCommand:
- bcftools
- query
