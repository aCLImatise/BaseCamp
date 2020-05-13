class: CommandLineTool
id: bcftools_plugin.cwl
inputs:
- id: exclude
  doc: exclude sites for which the expression is true
  type: string
  inputBinding:
    prefix: --exclude
- id: include
  doc: select sites for which the expression is true
  type: string
  inputBinding:
    prefix: --include
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
  doc: "'b' compressed BCF; 'u' uncompressed BCF; 'z' compressed VCF; 'v' uncompressed\
    \ VCF [v]"
  type: string
  inputBinding:
    prefix: --output-type
- id: threads
  doc: use multithreading with <int> worker threads [0]
  type: long
  inputBinding:
    prefix: --threads
- id: list_plugins
  doc: list available plugins. See BCFTOOLS_PLUGINS environment variable and man page
    for details
  type: boolean
  inputBinding:
    prefix: --list-plugins
- id: verbose
  doc: print verbose information, -vv increases verbosity
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- bcftools
- plugin
