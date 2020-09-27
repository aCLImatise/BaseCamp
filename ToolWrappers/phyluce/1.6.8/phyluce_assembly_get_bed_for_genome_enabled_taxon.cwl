class: CommandLineTool
id: phyluce_assembly_get_bed_for_genome_enabled_taxon.cwl
inputs:
- id: in_locus_db
  doc: The probe.matches.sqlite database
  type: string
  inputBinding:
    prefix: --locus-db
- id: in_lastz_file_use
  doc: The lastz file to use
  type: File
  inputBinding:
    prefix: --lastz-file
- id: in_tax_on_name
  doc: The taxon name to search for in probe.matches.sqlite
  type: string
  inputBinding:
    prefix: --taxon-name
- id: in_output_bed_file
  doc: The output BED file to create
  type: File
  inputBinding:
    prefix: --output
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
- id: in_regex
  doc: "A regular expression to apply to the probe names for\nreplacement [default='^(uce-\\\
    d+)(?:_p\\d+.*)'].\n"
  type: string
  inputBinding:
    prefix: --regex
- id: in__taxonname
  doc: --taxon-name
  type: string
  inputBinding:
    position: 0
- id: in_var_8
  doc: '[--verbosity {INFO,WARN,CRITICAL}]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_bed_file
  doc: The output BED file to create
  type: File
  outputBinding:
    glob: $(inputs.in_output_bed_file)
cwlVersion: v1.1
baseCommand:
- phyluce_assembly_get_bed_for_genome_enabled_taxon
