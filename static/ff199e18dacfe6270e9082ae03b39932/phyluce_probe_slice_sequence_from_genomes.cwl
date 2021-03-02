class: CommandLineTool
id: phyluce_probe_slice_sequence_from_genomes.cwl
inputs:
- id: in_conf
  doc: Path to the configuration file
  type: File?
  inputBinding:
    prefix: --conf
- id: in_last_z
  doc: Path to the directory containing LASTZ results
  type: File?
  inputBinding:
    prefix: --lastz
- id: in_output
  doc: Path to the output directory for storing FASTA files
  type: File?
  inputBinding:
    prefix: --output
- id: in_name_pattern
  doc: "An alternate name pattern to transform the conf entry\ninto"
  type: string?
  inputBinding:
    prefix: --name-pattern
- id: in_probe_prefix
  doc: The prefix (e.g. "uce-") added to all probes designed
  type: string?
  inputBinding:
    prefix: --probe-prefix
- id: in_probe_regex
  doc: The regular expression to use for matching probes
  type: string?
  inputBinding:
    prefix: --probe-regex
- id: in_exclude
  doc: Species to exclude from genome slicing
  type: string[]
  inputBinding:
    prefix: --exclude
- id: in_verbosity
  doc: The logging level to use
  type: string?
  inputBinding:
    prefix: --verbosity
- id: in_contig_orient
  doc: "Check orientation by contigs versus probes - useful\nfor multi-species probe\
    \ sets"
  type: boolean?
  inputBinding:
    prefix: --contig_orient
- id: in_flank
  doc: The amount of flanking sequence to add to each match
  type: string?
  inputBinding:
    prefix: --flank
- id: in_probes
  doc: The probe length to use
  type: long?
  inputBinding:
    prefix: --probes
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Path to the output directory for storing FASTA files
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- phyluce_probe_slice_sequence_from_genomes
