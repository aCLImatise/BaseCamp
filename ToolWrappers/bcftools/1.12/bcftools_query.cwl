class: CommandLineTool
id: bcftools_query.cwl
inputs:
- id: in_exclude
  doc: exclude sites for which the expression is true (see man page for details)
  type: string?
  inputBinding:
    prefix: --exclude
- id: in_format
  doc: see man page for details
  type: string?
  inputBinding:
    prefix: --format
- id: in_print_header
  doc: print header
  type: boolean?
  inputBinding:
    prefix: --print-header
- id: in_include
  doc: select sites for which the expression is true (see man page for details)
  type: string?
  inputBinding:
    prefix: --include
- id: in_list_samples
  doc: print the list of samples and exit
  type: boolean?
  inputBinding:
    prefix: --list-samples
- id: in_output
  doc: output file name [stdout]
  type: File?
  inputBinding:
    prefix: --output
- id: in_regions
  doc: restrict to comma-separated list of regions
  type: string?
  inputBinding:
    prefix: --regions
- id: in_regions_file
  doc: restrict to regions listed in a file
  type: File?
  inputBinding:
    prefix: --regions-file
- id: in_samples
  doc: list of samples to include
  type: string?
  inputBinding:
    prefix: --samples
- id: in_samples_file
  doc: file of samples to include
  type: File?
  inputBinding:
    prefix: --samples-file
- id: in_targets
  doc: similar to -r but streams rather than index-jumps
  type: string?
  inputBinding:
    prefix: --targets
- id: in_targets_file
  doc: similar to -R but streams rather than index-jumps
  type: File?
  inputBinding:
    prefix: --targets-file
- id: in_allow_undef_tags
  doc: print "." for undefined tags
  type: boolean?
  inputBinding:
    prefix: --allow-undef-tags
- id: in_vcf_list
  doc: process multiple VCFs listed in the file
  type: File?
  inputBinding:
    prefix: --vcf-list
- id: in_a_dot_vcf_do_tgz
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output file name [stdout]
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bcftools:1.12--h3f113a9_0
cwlVersion: v1.1
baseCommand:
- bcftools
- query
