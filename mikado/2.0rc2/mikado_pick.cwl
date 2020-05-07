class: CommandLineTool
id: mikado_pick.cwl
inputs:
- id: fast_a
  doc: 'Genome FASTA file. Required for transcript padding. (default: None)'
  type: string
  inputBinding:
    prefix: --fasta
- id: start_method
  doc: 'Multiprocessing start method. (default: None)'
  type: string
  inputBinding:
    prefix: --start-method
- id: shm
  doc: 'Flag. If switched, Mikado pick will copy the database to RAM (ie SHM) for
    faster access during the run. (default: False)'
  type: boolean
  inputBinding:
    prefix: --shm
- id: procs
  doc: 'Number of processors to use. Default: look in the configuration file (1 if
    undefined) (default: None)'
  type: string
  inputBinding:
    prefix: --procs
- id: json_conf
  doc: 'JSON/YAML configuration file for Mikado. (default: None)'
  type: string
  inputBinding:
    prefix: --json-conf
- id: scoring_file
  doc: 'Optional scoring file for the run. It will override the value set in the configuration.
    (default: None)'
  type: string
  inputBinding:
    prefix: --scoring-file
- id: i
  doc: 'INTRON_RANGE, --intron-range INTRON_RANGE INTRON_RANGE Range into which intron
    lengths should fall, as a couple of integers. Transcripts with intron lengths
    outside of this range will be penalised. Default: (60, 900) (default: None)'
  type: long
  inputBinding:
    prefix: -i
- id: no_pad
  doc: 'Disable transcript padding. (default: None)'
  type: boolean
  inputBinding:
    prefix: --no-pad
- id: pad
  doc: 'Whether to pad transcripts in loci. (default: None)'
  type: boolean
  inputBinding:
    prefix: --pad
- id: pad_max_splices
  doc: 'Maximum splice sites that can be crossed during transcript padding. (default:
    None)'
  type: string
  inputBinding:
    prefix: --pad-max-splices
- id: pad_max_distance
  doc: 'Maximum amount of bps that transcripts can be padded with (per side). (default:
    None)'
  type: string
  inputBinding:
    prefix: --pad-max-distance
- id: regions
  doc: 'Either a single region on the CLI or a file listing a series of target regions.
    Mikado pick will only consider regions included in this string/file. Regions should
    be provided in a WebApollo-like format: <chrom>:<start>..<end> (default: None)'
  type: string
  inputBinding:
    prefix: --regions
- id: no_cds
  doc: 'Flag. If set, not CDS information will be printed out in the GFF output files.
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --no_cds
- id: flank
  doc: 'Flanking distance (in bps) to group non-overlapping transcripts into a single
    superlocus. Default: determined by the configuration file. (default: None)'
  type: string
  inputBinding:
    prefix: --flank
- id: max_intron_length
  doc: 'Maximum intron length for a transcript. Default: inferred from the configuration
    file (default value there is 1,000,000 bps). (default: None)'
  type: long
  inputBinding:
    prefix: --max-intron-length
- id: no_purge
  doc: 'Flag. If set, the pipeline will NOT suppress any loci whose transcripts do
    not pass the requirements set in the JSON file. (default: False)'
  type: boolean
  inputBinding:
    prefix: --no-purge
- id: cds_only
  doc: '"Flag. If set, Mikado will only look for overlap in the coding features when
    clustering transcripts (unless one transcript is non-coding, in which case the
    whole transcript will be considered). Please note that Mikado will only consider
    the **best** ORF for this. Default: False, Mikado will consider transcripts in
    their entirety. (default: False)'
  type: boolean
  inputBinding:
    prefix: --cds-only
- id: only_reference_update
  doc: 'Flag. If switched on, Mikado will only keep loci where at least one of the
    transcripts is marked as "reference". CAUTION: new and experimental. If no transcript
    has been marked as reference, the output will be completely empty! (default: None)'
  type: boolean
  inputBinding:
    prefix: --only-reference-update
- id: exclude_retained_introns
  doc: 'Exclude all retained intron alternative splicing events from the final output.
    Default: False. Retained intron events that do not dirsupt the CDS are kept by
    Mikado in the final output. (default: None)'
  type: boolean
  inputBinding:
    prefix: --exclude-retained-introns
- id: keep_disrupted_cds
  doc: 'Keep in the final output transcripts whose CDS is most probably disrupted
    by a retained intron event. Default: False. Mikado will try to detect these instances
    and exclude them from the final output. (default: None)'
  type: boolean
  inputBinding:
    prefix: --keep-disrupted-cds
- id: check_references
  doc: 'Flag. If switched on, Mikado will also check reference models against the
    general transcript requirements, and will also consider them as potential fragments.
    This is useful in the context of e.g. updating an *ab- initio* results with data
    from RNASeq, protein alignments, etc. (default: None)'
  type: boolean
  inputBinding:
    prefix: --check-references
- id: sqlite_db
  doc: 'Location of an SQLite database to overwrite what is specified in the configuration
    file. (default: None)'
  type: string
  inputBinding:
    prefix: --sqlite-db
- id: output_dir
  doc: 'Output directory. Default: current working directory (default: None)'
  type: string
  inputBinding:
    prefix: --output-dir
- id: single
  doc: 'Flag. If set, Creator will be launched with a single process, without involving
    the multithreading apparatus. Useful for debugging purposes only. (default: False)'
  type: boolean
  inputBinding:
    prefix: --single
- id: mode
  doc: 'Mode in which Mikado will treat transcripts with multiple ORFs. - nosplit:
    keep the transcripts whole. - stringent: split multi-orf transcripts if two consecutive
    ORFs have both BLAST hits and none of those hits is against the same target. -
    lenient: split multi-orf transcripts as in stringent, and additionally, also when
    either of the ORFs lacks a BLAST hit (but not both). - permissive: like lenient,
    but also split when both ORFs lack BLAST hits - split: split multi-orf transcripts
    regardless of what BLAST data is available. (default: None)'
  type: string
  inputBinding:
    prefix: --mode
- id: seed
  doc: 'Random seed number. (default: None)'
  type: string
  inputBinding:
    prefix: --seed
- id: loci_out
  doc: 'This output file is mandatory. If it is not specified in the configuration
    file, it must be provided here. (default: None)'
  type: string
  inputBinding:
    prefix: --loci-out
- id: prefix
  doc: 'Prefix for the genes. Default: Mikado (default: None)'
  type: string
  inputBinding:
    prefix: --prefix
- id: source
  doc: 'Source field to use for the output files. (default: None)'
  type: string
  inputBinding:
    prefix: --source
- id: log
  doc: 'File to write the log to. Default: decided by the configuration file. (default:
    None)'
  type: string
  inputBinding:
    prefix: --log
- id: verbose
  doc: 'Flag. If set, the debug mode will be activated. (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: no_verbose
  doc: 'Flag. If set, the log will report only errors and critical events. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --noverbose
- id: log_level
  doc: 'Logging level. Default: retrieved by the configuration file. (default: None)'
  type: string
  inputBinding:
    prefix: --log-level
outputs: []
cwlVersion: v1.1
baseCommand:
- mikado
- pick
