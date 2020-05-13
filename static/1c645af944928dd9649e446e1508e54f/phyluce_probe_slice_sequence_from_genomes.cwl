class: CommandLineTool
id: phyluce_probe_slice_sequence_from_genomes.cwl
inputs:
- id: conf
  doc: Path to the configuration file
  type: string
  inputBinding:
    prefix: --conf
- id: last_z
  doc: Path to the directory containing LASTZ results
  type: string
  inputBinding:
    prefix: --lastz
- id: output
  doc: Path to the output directory for storing FASTA files
  type: string
  inputBinding:
    prefix: --output
- id: name_pattern
  doc: An alternate name pattern to transform the conf entry into
  type: string
  inputBinding:
    prefix: --name-pattern
- id: probe_prefix
  doc: The prefix (e.g. "uce-") added to all probes designed
  type: string
  inputBinding:
    prefix: --probe-prefix
- id: probe_regex
  doc: The regular expression to use for matching probes
  type: string
  inputBinding:
    prefix: --probe-regex
- id: exclude
  doc: Species to exclude from genome slicing
  type: string[]
  inputBinding:
    prefix: --exclude
- id: verbosity
  doc: The logging level to use
  type: string
  inputBinding:
    prefix: --verbosity
- id: contig_orient
  doc: Check orientation by contigs versus probes - useful for multi-species probe
    sets
  type: boolean
  inputBinding:
    prefix: --contig_orient
- id: flank
  doc: The amount of flanking sequence to add to each match
  type: string
  inputBinding:
    prefix: --flank
- id: probes
  doc: The probe length to use
  type: string
  inputBinding:
    prefix: --probes
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_probe_slice_sequence_from_genomes
