class: CommandLineTool
id: phyluce_assembly_get_bed_for_genome_enabled_taxon.cwl
inputs:
- id: locus_db
  doc: The probe.matches.sqlite database
  type: string
  inputBinding:
    prefix: --locus-db
- id: last_z_file
  doc: The lastz file to use
  type: string
  inputBinding:
    prefix: --lastz-file
- id: tax_on_name
  doc: The taxon name to search for in probe.matches.sqlite
  type: string
  inputBinding:
    prefix: --taxon-name
- id: output
  doc: The output BED file to create
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
- id: regex
  doc: A regular expression to apply to the probe names for replacement [default='^(uce-\d+)(?:_p\d+.*)'].
  type: string
  inputBinding:
    prefix: --regex
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_assembly_get_bed_for_genome_enabled_taxon
