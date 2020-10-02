class: CommandLineTool
id: daa2info.cwl
inputs:
- id: in_in
  doc: '[string]                    Input DAA file. Mandatory option.'
  type: boolean
  inputBinding:
    prefix: --in
- id: in_out
  doc: "[string]                   Output file or '-' for stdout. Default value: -."
  type: File
  inputBinding:
    prefix: --out
- id: in_list_more
  doc: 'List more info about file (if meganized). Default value: false.'
  type: boolean
  inputBinding:
    prefix: --listMore
- id: in_class_two_count
  doc: '[string(s)]      List class to count for named classification(s) (Possible
    values: EGGNOG INTERPRO2GO KEGG SEED Taxonomy).'
  type: boolean
  inputBinding:
    prefix: --class2count
- id: in_read_two_class
  doc: '[string(s)]       List read to class assignments for named classification(s)
    (Possible values: EGGNOG INTERPRO2GO KEGG SEED Taxonomy).'
  type: boolean
  inputBinding:
    prefix: --read2class
- id: in_names
  doc: 'Report class names rather than class Id numbers. Default value: false.'
  type: boolean
  inputBinding:
    prefix: --names
- id: in_paths
  doc: 'Report class paths rather than class Id numbers. Default value: false.'
  type: boolean
  inputBinding:
    prefix: --paths
- id: in_prefix_rank
  doc: 'When reporting class paths for taxonomy, prefix single letter to indicate
    taxonomic rank. Default value: false.'
  type: boolean
  inputBinding:
    prefix: --prefixRank
- id: in_major_ranks_only
  doc: 'Only use major taxonomic ranks. Default value: false.'
  type: boolean
  inputBinding:
    prefix: --majorRanksOnly
- id: in_bacteria_only
  doc: 'Only report bacterial reads and counts in taxonomic report. Default value:
    false.'
  type: boolean
  inputBinding:
    prefix: --bacteriaOnly
- id: in_virus_only
  doc: 'Only report viral reads and counts in taxonomic report. Default value: false.'
  type: boolean
  inputBinding:
    prefix: --virusOnly
- id: in_ignore_unassigned
  doc: "Don't report on reads that are unassigned. Default value: true."
  type: boolean
  inputBinding:
    prefix: --ignoreUnassigned
- id: in_extract_summary_file
  doc: '[string]   Output a MEGAN summary file (contains all classifications, but
    no reads or alignments.'
  type: File
  inputBinding:
    prefix: --extractSummaryFile
- id: in_verbose
  doc: 'Echo commandline options and be verbose. Default value: false.'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_commands
  doc: '-l, --list                           List general info about file. Default
    value: false.'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "[string]                   Output file or '-' for stdout. Default value: -."
  type: File
  outputBinding:
    glob: $(inputs.in_out)
- id: out_extract_summary_file
  doc: '[string]   Output a MEGAN summary file (contains all classifications, but
    no reads or alignments.'
  type: File
  outputBinding:
    glob: $(inputs.in_extract_summary_file)
cwlVersion: v1.1
baseCommand:
- daa2info
