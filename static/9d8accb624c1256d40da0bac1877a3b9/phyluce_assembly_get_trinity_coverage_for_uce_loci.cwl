class: CommandLineTool
id: phyluce_assembly_get_trinity_coverage_for_uce_loci.cwl
inputs:
- id: assemblies
  doc: The directory containing the assemblies
  type: string
  inputBinding:
    prefix: --assemblies
- id: match_count_output
  doc: The output file containing taxa and loci in complete/incomplete matrices generated
    by get_match_counts.py.
  type: string
  inputBinding:
    prefix: --match-count-output
- id: type
  doc: Whether to compute stats on trimmed or untrimmed UCE data.
  type: string
  inputBinding:
    prefix: --type
- id: exclude
  doc: A list of assemblies to ignore.
  type: string[]
  inputBinding:
    prefix: --exclude
- id: locus_db
  doc: The SQL database file holding probe matches to targeted loci (usually "lastz/probe.matches.sqlite").
  type: string
  inputBinding:
    prefix: --locus-db
- id: output
  doc: The output directory to hold the UCE coverage files
  type: string
  inputBinding:
    prefix: --output
- id: resume
  doc: The output directory in which to resume after a failure.
  type: string
  inputBinding:
    prefix: --resume
- id: verbosity
  doc: The logging level to use
  type: string
  inputBinding:
    prefix: --verbosity
- id: log_path
  doc: The path to a directory to hold logs.
  type: string
  inputBinding:
    prefix: --log-path
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_assembly_get_trinity_coverage_for_uce_loci
