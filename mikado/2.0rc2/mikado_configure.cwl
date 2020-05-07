class: CommandLineTool
id: mikado_configure.cwl
inputs:
- id: skip_split
  doc: List of labels for which splitting will be disabled (eg long reads such as
    PacBio)
  type: string[]
  inputBinding:
    prefix: --skip-split
- id: json
  doc: 'Output will be in JSON (default: inferred by filename, with TOML as fallback).'
  type: boolean
  inputBinding:
    prefix: --json
- id: yaml
  doc: 'Output will be in YAML (default: inferred by filename, with TOML as fallback).'
  type: boolean
  inputBinding:
    prefix: --yaml
- id: to_ml
  doc: 'Output will be in TOML (default: inferred by filename, with TOML as fallback).'
  type: boolean
  inputBinding:
    prefix: --toml
- id: out_dir
  doc: Destination directory for the output.
  type: string
  inputBinding:
    prefix: --out-dir
- id: minimum_cdna_length
  doc: Minimum cDNA length for transcripts.
  type: long
  inputBinding:
    prefix: --minimum-cdna-length
- id: max_intron_length
  doc: Maximum intron length for transcripts.
  type: long
  inputBinding:
    prefix: --max-intron-length
- id: scoring
  doc: 'Scoring file to use. Mikado provides the following: mammalian.yaml, plant.yaml,
    HISTORIC/worm.yaml, HISTORIC/athaliana_scoring.yaml, HISTORIC/celegans_scoring.yaml,
    HISTORIC/scerevisiae.yaml, HISTORIC/insects.yaml, HISTORIC/dmelanogaster_scoring.yaml,
    HISTORIC/human.yaml, HISTORIC/plants.yaml, HISTORIC/hsapiens_scoring.yaml'
  type: string
  inputBinding:
    prefix: --scoring
- id: copy_scoring
  doc: File into which to copy the selected scoring file, for modification.
  type: string
  inputBinding:
    prefix: --copy-scoring
- id: i
  doc: 'INTRON_RANGE, --intron-range INTRON_RANGE INTRON_RANGE Range into which intron
    lengths should fall, as a couple of integers. Transcripts with intron lengths
    outside of this range will be penalised. Default: (60, 900)'
  type: long
  inputBinding:
    prefix: -i
- id: subloc_i_out
  doc: Name of the optional subloci output. By default, this will not be produced.
  type: string
  inputBinding:
    prefix: --subloci-out
- id: mono_loci_out
  doc: Name of the optional monoloci output. By default, this will not be produced.
  type: string
  inputBinding:
    prefix: --monoloci-out
- id: no_pad
  doc: Disable transcript padding. On by default.
  type: boolean
  inputBinding:
    prefix: --no-pad
- id: only_reference_update
  doc: 'Flag. If switched on, Mikado will only keep loci where at least one of the
    transcripts     is marked as "reference". CAUTION: new and experimental. If no
    transcript has been marked as reference,     the output will be completely empty!'
  type: boolean
  inputBinding:
    prefix: --only-reference-update
- id: exclude_retained_introns
  doc: 'Exclude all retained intron alternative splicing events from the final output.
    Default: False. Retained intron events that do not dirsupt the CDS are kept by
    Mikado in the final output.'
  type: boolean
  inputBinding:
    prefix: --exclude-retained-introns
- id: keep_disrupted_cds
  doc: 'Keep in the final output transcripts whose CDS is most probably disrupted
    by a retained intron event. Default: False. Mikado will try to detect these instances
    and exclude them from the final output.'
  type: boolean
  inputBinding:
    prefix: --keep-disrupted-cds
- id: check_references
  doc: 'Flag. If switched on, Mikado will also check reference models against the
    general transcript requirements, and will also consider them as potential fragments.
    This is useful in the context of e.g. updating an *ab-initio* results with data
    from RNASeq, protein alignments, etc. '
  type: boolean
  inputBinding:
    prefix: --check-references
- id: scheduler
  doc: 'Scheduler to use. Default: None - ie, either execute everything on the local
    machine or use DRMAA to submit and control jobs (recommended).'
  type: string
  inputBinding:
    prefix: --scheduler
- id: exe
  doc: Configuration file for the executables.
  type: string
  inputBinding:
    prefix: --exe
- id: cluster_config
  doc: Cluster configuration file to write to.
  type: string
  inputBinding:
    prefix: --cluster_config
outputs: []
cwlVersion: v1.1
baseCommand:
- mikado
- configure
