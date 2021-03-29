class: CommandLineTool
id: bcftools_plugin.cwl
inputs:
- id: in_exclude
  doc: exclude sites for which the expression is true
  type: string?
  inputBinding:
    prefix: --exclude
- id: in_include
  doc: select sites for which the expression is true
  type: string?
  inputBinding:
    prefix: --include
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
- id: in_no_version
  doc: do not append version and command line to the header
  type: boolean?
  inputBinding:
    prefix: --no-version
- id: in_output
  doc: write output to a file [standard output]
  type: File?
  inputBinding:
    prefix: --output
- id: in_output_type
  doc: "'b' compressed BCF; 'u' uncompressed BCF; 'z' compressed VCF; 'v' uncompressed\
    \ VCF [v]"
  type: string?
  inputBinding:
    prefix: --output-type
- id: in_threads
  doc: use multithreading with <int> worker threads [0]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_list_plugins
  doc: list available plugins. See BCFTOOLS_PLUGINS environment variable and man page
    for details
  type: boolean?
  inputBinding:
    prefix: --list-plugins
- id: in_verbose
  doc: print verbose information, -vv increases verbosity
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: write output to a file [standard output]
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bcftools:1.12--h3f113a9_0
cwlVersion: v1.1
baseCommand:
- bcftools
- plugin
