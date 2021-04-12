class: CommandLineTool
id: bactopia_search.py.cwl
inputs:
- id: in_exact_tax_on
  doc: Exclude Taxon ID descendents.
  type: boolean?
  inputBinding:
    prefix: --exact_taxon
- id: in_outdir
  doc: 'Directory to write output. (Default: .)'
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_prefix
  doc: 'Prefix to use for output file names. (Default: ena)'
  type: File?
  inputBinding:
    prefix: --prefix
- id: in_limit
  doc: "Maximum number of results (per query) to return.\n(Default: 1000000)"
  type: long?
  inputBinding:
    prefix: --limit
- id: in_accession_limit
  doc: "Maximum number of accessions to query at once.\n(Default: 5000)"
  type: long?
  inputBinding:
    prefix: --accession_limit
- id: in_bio_sample_subset
  doc: "If a BioSample has multiple Experiments, pick a random\nsubset. (Default:\
    \ Return All)"
  type: long?
  inputBinding:
    prefix: --biosample_subset
- id: in_min_read_length
  doc: "Filters samples based on minimum mean read length.\n(Default: No filter)"
  type: long?
  inputBinding:
    prefix: --min_read_length
- id: in_min_base_count
  doc: "Filters samples based on minimum basepair count.\n(Default: No filter)"
  type: long?
  inputBinding:
    prefix: --min_base_count
- id: in_min_coverage
  doc: Filter samples based on minimum coverage (requires
  type: long?
  inputBinding:
    prefix: --min_coverage
- id: in_genome_size
  doc: Genome size to estimate coverage (requires --coverage)
  type: long?
  inputBinding:
    prefix: --genome_size
- id: in_bac_topia
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_search
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: 'Directory to write output. (Default: .)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_prefix
  doc: 'Prefix to use for output file names. (Default: ena)'
  type: File?
  outputBinding:
    glob: $(inputs.in_prefix)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bactopia:1.6.5--hdfd78af_1
cwlVersion: v1.1
baseCommand:
- bactopia-search.py
