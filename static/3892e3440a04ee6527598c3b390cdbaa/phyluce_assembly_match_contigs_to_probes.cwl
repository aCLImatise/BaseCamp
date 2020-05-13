class: CommandLineTool
id: phyluce_assembly_match_contigs_to_probes.cwl
inputs:
- id: contigs
  doc: The directory containing the assembled contigs in which you are searching for
    UCE loci.
  type: string
  inputBinding:
    prefix: --contigs
- id: probes
  doc: The bait/probe file in FASTA format.
  type: string
  inputBinding:
    prefix: --probes
- id: output
  doc: The directory in which to store the resulting SQL database and LASTZ files.
  type: string
  inputBinding:
    prefix: --output
- id: verbosity
  doc: The logging level to use.
  type: string
  inputBinding:
    prefix: --verbosity
- id: log_path
  doc: The path to a directory to hold logs.
  type: string
  inputBinding:
    prefix: --log-path
- id: min_coverage
  doc: The minimum percent coverage required for a match [default=80].
  type: long
  inputBinding:
    prefix: --min-coverage
- id: min_identity
  doc: The minimum percent identity required for a match [default=80].
  type: long
  inputBinding:
    prefix: --min-identity
- id: dupe_file
  doc: Path to self-to-self lastz results for baits to remove potential duplicate
    probes.
  type: string
  inputBinding:
    prefix: --dupefile
- id: regex
  doc: A regular expression to apply to the probe names for replacement [default='^(uce-\d+)(?:_p\d+.*)'].
  type: string
  inputBinding:
    prefix: --regex
- id: keep_duplicates
  doc: A optional output file in which to store those loci that appear to be duplicates.
  type: string
  inputBinding:
    prefix: --keep-duplicates
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_assembly_match_contigs_to_probes
