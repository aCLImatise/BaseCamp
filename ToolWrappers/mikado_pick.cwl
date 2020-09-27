class: CommandLineTool
id: mikado_pick.cwl
inputs:
- id: in_json_conf
  doc: '[--scoring-file SCORING_FILE]'
  type: File
  inputBinding:
    prefix: --json-conf
- id: in_fast_a
  doc: "Genome FASTA file. Required for transcript padding.\n(default: None)"
  type: File
  inputBinding:
    prefix: --fasta
- id: in_start_method
  doc: 'Multiprocessing start method. (default: None)'
  type: string
  inputBinding:
    prefix: --start-method
- id: in_shm
  doc: "Flag. If switched, Mikado pick will copy the database\nto RAM (ie SHM) for\
    \ faster access during the run.\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --shm
- id: in_procs
  doc: "Number of processors to use. Default: look in the\nconfiguration file (1 if\
    \ undefined) (default: None)"
  type: long
  inputBinding:
    prefix: --procs
- id: in_scoring_file
  doc: "Optional scoring file for the run. It will override\nthe value set in the\
    \ configuration. (default: None)"
  type: File
  inputBinding:
    prefix: --scoring-file
- id: in_intronrange__intronrange
  doc: "INTRON_RANGE, --intron-range INTRON_RANGE INTRON_RANGE\nRange into which intron\
    \ lengths should fall, as a\ncouple of integers. Transcripts with intron lengths\n\
    outside of this range will be penalised. Default: (60,\n900) (default: None)"
  type: long
  inputBinding:
    prefix: -i
- id: in_no_pad
  doc: 'Disable transcript padding. (default: None)'
  type: boolean
  inputBinding:
    prefix: --no-pad
- id: in_pad
  doc: 'Whether to pad transcripts in loci. (default: None)'
  type: boolean
  inputBinding:
    prefix: --pad
- id: in_pad_max_splices
  doc: "Maximum splice sites that can be crossed during\ntranscript padding. (default:\
    \ None)"
  type: long
  inputBinding:
    prefix: --pad-max-splices
- id: in_pad_max_distance
  doc: "Maximum amount of bps that transcripts can be padded\nwith (per side). (default:\
    \ None)"
  type: long
  inputBinding:
    prefix: --pad-max-distance
- id: in_regions
  doc: "Either a single region on the CLI or a file listing a\nseries of target regions.\
    \ Mikado pick will only\nconsider regions included in this string/file. Regions\n\
    should be provided in a WebApollo-like format:\n<chrom>:<start>..<end> (default:\
    \ None)"
  type: File
  inputBinding:
    prefix: --regions
- id: in_no_cds
  doc: "Flag. If set, not CDS information will be printed out\nin the GFF output files.\
    \ (default: False)"
  type: boolean
  inputBinding:
    prefix: --no_cds
- id: in_flank
  doc: "Flanking distance (in bps) to group non-overlapping\ntranscripts into a single\
    \ superlocus. Default:\ndetermined by the configuration file. (default: None)"
  type: File
  inputBinding:
    prefix: --flank
- id: in_max_intron_length
  doc: "Maximum intron length for a transcript. Default:\ninferred from the configuration\
    \ file (default value\nthere is 1,000,000 bps). (default: None)"
  type: long
  inputBinding:
    prefix: --max-intron-length
- id: in_no_purge
  doc: "Flag. If set, the pipeline will NOT suppress any loci\nwhose transcripts do\
    \ not pass the requirements set in\nthe JSON file. (default: False)"
  type: boolean
  inputBinding:
    prefix: --no-purge
- id: in_cds_only
  doc: "\"Flag. If set, Mikado will only look for overlap in\nthe coding features\
    \ when clustering transcripts\n(unless one transcript is non-coding, in which\
    \ case\nthe whole transcript will be considered). Please note\nthat Mikado will\
    \ only consider the **best** ORF for\nthis. Default: False, Mikado will consider\
    \ transcripts\nin their entirety. (default: False)"
  type: boolean
  inputBinding:
    prefix: --cds-only
- id: in_only_reference_update
  doc: "Flag. If switched on, Mikado will only keep loci where\nat least one of the\
    \ transcripts is marked as\n\"reference\". CAUTION: new and experimental. If no\n\
    transcript has been marked as reference, the output\nwill be completely empty!\
    \ (default: None)"
  type: boolean
  inputBinding:
    prefix: --only-reference-update
- id: in_exclude_retained_introns
  doc: "Exclude all retained intron alternative splicing\nevents from the final output.\
    \ Default: False. Retained\nintron events that do not dirsupt the CDS are kept\
    \ by\nMikado in the final output. (default: None)"
  type: boolean
  inputBinding:
    prefix: --exclude-retained-introns
- id: in_keep_disrupted_cds
  doc: "Keep in the final output transcripts whose CDS is most\nprobably disrupted\
    \ by a retained intron event.\nDefault: False. Mikado will try to detect these\n\
    instances and exclude them from the final output.\n(default: None)"
  type: boolean
  inputBinding:
    prefix: --keep-disrupted-cds
- id: in_check_references
  doc: "Flag. If switched on, Mikado will also check reference\nmodels against the\
    \ general transcript requirements,\nand will also consider them as potential fragments.\n\
    This is useful in the context of e.g. updating an *ab-\ninitio* results with data\
    \ from RNASeq, protein\nalignments, etc. (default: None)"
  type: boolean
  inputBinding:
    prefix: --check-references
- id: in_sqlite_db
  doc: "Location of an SQLite database to overwrite what is\nspecified in the configuration\
    \ file. (default: None)"
  type: File
  inputBinding:
    prefix: --sqlite-db
- id: in_output_dir
  doc: "Output directory. Default: current working directory\n(default: None)"
  type: Directory
  inputBinding:
    prefix: --output-dir
- id: in_single
  doc: "Flag. If set, Creator will be launched with a single\nprocess, without involving\
    \ the multithreading\napparatus. Useful for debugging purposes only.\n(default:\
    \ False)"
  type: boolean
  inputBinding:
    prefix: --single
- id: in_mode
  doc: "Mode in which Mikado will treat transcripts with\nmultiple ORFs. - nosplit:\
    \ keep the transcripts whole.\n- stringent: split multi-orf transcripts if two\n\
    consecutive ORFs have both BLAST hits and none of\nthose hits is against the same\
    \ target. - lenient:\nsplit multi-orf transcripts as in stringent, and\nadditionally,\
    \ also when either of the ORFs lacks a\nBLAST hit (but not both). - permissive:\
    \ like lenient,\nbut also split when both ORFs lack BLAST hits - split:\nsplit\
    \ multi-orf transcripts regardless of what BLAST\ndata is available. (default:\
    \ None)"
  type: string
  inputBinding:
    prefix: --mode
- id: in_seed
  doc: 'Random seed number. (default: None)'
  type: long
  inputBinding:
    prefix: --seed
- id: in_subloc_i_out
  doc: "--monoloci-out MONOLOCI_OUT\n--loci-out LOCI_OUT   This output file is mandatory.\
    \ If it is not specified\nin the configuration file, it must be provided here.\n\
    (default: None)\n--prefix PREFIX       Prefix for the genes. Default: Mikado (default:\
    \ None)\n--source SOURCE       Source field to use for the output files. (default:\n\
    None)"
  type: File
  inputBinding:
    prefix: --subloci-out
- id: in_log
  doc: "File to write the log to. Default: decided by the\nconfiguration file. (default:\
    \ None)"
  type: File
  inputBinding:
    prefix: --log
- id: in_verbose
  doc: "Flag. If set, the debug mode will be activated.\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_no_verbose
  doc: "Flag. If set, the log will report only errors and\ncritical events. (default:\
    \ False)"
  type: boolean
  inputBinding:
    prefix: --noverbose
- id: in_log_level
  doc: "Logging level. Default: retrieved by the configuration\nfile. (default: None)\n"
  type: string
  inputBinding:
    prefix: --log-level
- id: in_gff
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: "Output directory. Default: current working directory\n(default: None)"
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
- id: out_subloc_i_out
  doc: "--monoloci-out MONOLOCI_OUT\n--loci-out LOCI_OUT   This output file is mandatory.\
    \ If it is not specified\nin the configuration file, it must be provided here.\n\
    (default: None)\n--prefix PREFIX       Prefix for the genes. Default: Mikado (default:\
    \ None)\n--source SOURCE       Source field to use for the output files. (default:\n\
    None)"
  type: File
  outputBinding:
    glob: $(inputs.in_subloc_i_out)
cwlVersion: v1.1
baseCommand:
- mikado
- pick
