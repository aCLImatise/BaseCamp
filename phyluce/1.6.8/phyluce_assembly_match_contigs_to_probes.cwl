class: CommandLineTool
id: ../../../phyluce_assembly_match_contigs_to_probes.cwl
inputs:
- id: in_probes
  doc: ''
  type: string
  inputBinding:
    prefix: --probes
- id: in_regex
  doc: ='^(MyProbe-\W+)(?:_probe\d+.*)'
  type: boolean
  inputBinding:
    prefix: --regex
- id: in_contigs
  doc: "The directory containing the assembled contigs in\nwhich you are searching\
    \ for UCE loci."
  type: Directory
  inputBinding:
    prefix: --contigs
- id: in_verbosity
  doc: The logging level to use.
  type: string
  inputBinding:
    prefix: --verbosity
- id: in_log_path
  doc: The path to a directory to hold logs.
  type: File
  inputBinding:
    prefix: --log-path
- id: in_min_coverage
  doc: "The minimum percent coverage required for a match\n[default=80]."
  type: long
  inputBinding:
    prefix: --min-coverage
- id: in_min_identity
  doc: "The minimum percent identity required for a match\n[default=80]."
  type: long
  inputBinding:
    prefix: --min-identity
- id: in_dupe_file
  doc: "Path to self-to-self lastz results for baits to remove\npotential duplicate\
    \ probes."
  type: File
  inputBinding:
    prefix: --dupefile
- id: in_keep_duplicates
  doc: "A optional output file in which to store those loci\nthat appear to be duplicates.\n"
  type: File
  inputBinding:
    prefix: --keep-duplicates
- id: in_output
  doc: '[--verbosity {INFO,WARN,CRITICAL}]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_keep_duplicates
  doc: "A optional output file in which to store those loci\nthat appear to be duplicates.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_keep_duplicates)
cwlVersion: v1.1
baseCommand:
- phyluce_assembly_match_contigs_to_probes
