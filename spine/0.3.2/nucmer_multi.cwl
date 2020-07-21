class: CommandLineTool
id: ../../../nucmer_multi.pl.cwl
inputs:
- id: input_fasta_file
  doc: input fasta file
  type: boolean
  inputBinding:
    prefix: -f
- id: path_nucmer_application
  doc: path to nucmer application (including nucmer). If not given, will try to find
    nucmer in your PATH
  type: boolean
  inputBinding:
    prefix: -n
- id: additional_arguments_pass
  doc: Additional arguments to pass to nucmer, surrounded by quotes, i.e. "--maxmatch
    -b 200".
  type: boolean
  inputBinding:
    prefix: -a
- id: number_use_default
  doc: 'Number of threads to use (Default: 15)'
  type: boolean
  inputBinding:
    prefix: -t
- id: output_prefix_default
  doc: 'Output prefix (default: "out")'
  type: boolean
  inputBinding:
    prefix: -o
- id: include_selfvsself_alignments
  doc: 'Include self-vs-self alignments (default: self-vs-self alignments are not
    done when -g is given)'
  type: boolean
  inputBinding:
    prefix: -s
- id: include_backalignments_align
  doc: 'Include back-alignments, i.e. will align genome A vs genome B and also align
    genome B vs genome A (default: each potential alignment will only be included
    once)'
  type: boolean
  inputBinding:
    prefix: -b
- id: uppercase_output_version
  doc: (uppercase) output version number and quit
  type: boolean
  inputBinding:
    prefix: -V
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -OPTIONS
- id: more_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -MORE_OPTIONS
outputs: []
cwlVersion: v1.1
baseCommand:
- nucmer_multi.pl
