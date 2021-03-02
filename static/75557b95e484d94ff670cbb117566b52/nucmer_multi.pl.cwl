class: CommandLineTool
id: nucmer_multi.pl.cwl
inputs:
- id: in_input_fasta_file
  doc: input fasta file
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_separate_groups_records
  doc: "separate by groups. Fasta records with headers prefixed by \"#group_name#\"\
    \nwhere \"group_name\" is the name of different strains, for example, will be\n\
    separated. Records without headers in this format will be run individually."
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_path_nucmer_application
  doc: "path to nucmer application (including nucmer). If not given, will try\nto\
    \ find nucmer in your PATH"
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_additional_arguments_pass
  doc: "Additional arguments to pass to nucmer, surrounded by quotes,\ni.e. \"--maxmatch\
    \ -b 200\"."
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_number_threads_use
  doc: 'Number of threads to use (Default: 15)'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_output_prefix_default
  doc: 'Output prefix (default: "out")'
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_include_selfvsself_alignments
  doc: "Include self-vs-self alignments (default: self-vs-self alignments are\nnot\
    \ done when -g is given)"
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_include_backalignments_ie
  doc: "Include back-alignments, i.e. will align genome A vs genome B and also\nalign\
    \ genome B vs genome A\n(default: each potential alignment will only be included\
    \ once)"
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_uppercase_version_number
  doc: (uppercase) output version number and quit
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_more_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -MORE_OPTIONS
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -OPTIONS
- id: in_or
  doc: "-d    maximum number of fasta records to run nucmer on at one time.\nWARNING:\
    \ If this number is too small, may result in intense slowdown or\ncrashing, too\
    \ big and you may exceed nucmer's internal limits.\n(default: 1)"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- nucmer_multi.pl
