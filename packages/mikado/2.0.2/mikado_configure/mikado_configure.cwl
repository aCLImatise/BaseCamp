class: CommandLineTool
id: mikado_configure.cwl
inputs:
- id: in_full
  doc: Random seed number.
  type: long?
  inputBinding:
    prefix: --full
- id: in_strand_specific
  doc: Boolean flag indicating whether all the assemblies are
  type: boolean?
  inputBinding:
    prefix: --strand-specific
- id: in_gff
  doc: Input GFF/GTF file(s), separated by comma
  type: File?
  inputBinding:
    prefix: --gff
- id: in_list
  doc: "Tab-delimited file containing rows with the following\nformat: <file> <label>\
    \ <strandedness(def. False)>\n<score(optional, def. 0)> <is_reference(optional,\
    \ def.\nFalse)> <exclude_redundant(optional, def. True)>\n<strip_cds(optional,\
    \ def. False)>\n<skip_split(optional, def. False)> \"strandedness\",\n\"is_reference\"\
    , \"exclude_redundant\", \"strip_cds\" and\n\"skip_split\" must be boolean values\
    \ (True, False)\n\"score\" must be a valid floating number."
  type: boolean?
  inputBinding:
    prefix: --list
- id: in_reference
  doc: Fasta genomic reference.
  type: string?
  inputBinding:
    prefix: --reference
- id: in_strand_specific_assemblies
  doc: List of strand-specific assemblies among the inputs.
  type: string?
  inputBinding:
    prefix: --strand-specific-assemblies
- id: in_labels
  doc: "Labels to attach to the IDs of the transcripts of the\ninput files, separated\
    \ by comma."
  type: string?
  inputBinding:
    prefix: --labels
- id: in_codon_table
  doc: "Codon table to use. Default: 0 (ie Standard, NCBI #1,\nbut only ATG is considered\
    \ a valid start codon."
  type: long?
  inputBinding:
    prefix: --codon-table
- id: in_external
  doc: "External configuration file to overwrite/add values\nfrom. Parameters specified\
    \ on the command line will\ntake precedence over those present in the\nconfiguration\
    \ file."
  type: File?
  inputBinding:
    prefix: --external
- id: in_skip_split
  doc: "List of labels for which splitting will be disabled\n(eg long reads such as\
    \ PacBio)"
  type: string?
  inputBinding:
    prefix: --skip-split
- id: in_json
  doc: "Output will be in JSON (default: inferred by filename,\nwith TOML as fallback)."
  type: File?
  inputBinding:
    prefix: --json
- id: in_yaml
  doc: "Output will be in YAML (default: inferred by filename,\nwith TOML as fallback)."
  type: File?
  inputBinding:
    prefix: --yaml
- id: in_to_ml
  doc: "Output will be in TOML (default: inferred by filename,\nwith TOML as fallback)."
  type: File?
  inputBinding:
    prefix: --toml
- id: in_out_dir
  doc: Destination directory for the output.
  type: Directory?
  inputBinding:
    prefix: --out-dir
- id: in_minimum_cdna_length
  doc: Minimum cDNA length for transcripts.
  type: long?
  inputBinding:
    prefix: --minimum-cdna-length
- id: in_max_intron_length
  doc: Maximum intron length for transcripts.
  type: long?
  inputBinding:
    prefix: --max-intron-length
- id: in_strip_faulty_cds
  doc: "Flag. If set, transcripts with an incorrect CDS will\nbe retained but with\
    \ their CDS stripped. Default\nbehaviour: the whole transcript will be considered\n\
    invalid and discarded."
  type: boolean?
  inputBinding:
    prefix: --strip-faulty-cds
- id: in_scoring
  doc: "Scoring file to use. Mikado provides the following:\nmammalian.yaml, plant.yaml,\
    \ HISTORIC/worm.yaml,\nHISTORIC/athaliana_scoring.yaml,\nHISTORIC/scerevisiae.yaml,\n\
    HISTORIC/celegans_scoring.yaml, HISTORIC/insects.yaml,\nHISTORIC/mammalian.yaml,\
    \ HISTORIC/human.yaml,\nHISTORIC/plant.yaml, HISTORIC/hsapiens_scoring.yaml,\n\
    HISTORIC/dmelanogaster_scoring.yaml,\nHISTORIC/plants.yaml"
  type: File?
  inputBinding:
    prefix: --scoring
- id: in_copy_scoring
  doc: "File into which to copy the selected scoring file, for\nmodification."
  type: File?
  inputBinding:
    prefix: --copy-scoring
- id: in__intronrange_intronrange
  doc: "INTRON_RANGE, --intron-range INTRON_RANGE INTRON_RANGE\nRange into which intron\
    \ lengths should fall, as a\ncouple of integers. Transcripts with intron lengths\n\
    outside of this range will be penalised. Default: (60,\n900)"
  type: long?
  inputBinding:
    prefix: -i
- id: in_subloc_i_out
  doc: "Name of the optional subloci output. By default, this\nwill not be produced."
  type: string?
  inputBinding:
    prefix: --subloci-out
- id: in_mono_loci_out
  doc: "Name of the optional monoloci output. By default, this\nwill not be produced."
  type: string?
  inputBinding:
    prefix: --monoloci-out
- id: in_no_pad
  doc: Disable transcript padding. On by default.
  type: boolean?
  inputBinding:
    prefix: --no-pad
- id: in_reference_update
  doc: "Flag. If switched on, Mikado will prioritise\ntranscripts marked as reference\
    \ and will consider any\nother transcipt within loci only in reference to these\n\
    reference transcripts. Novel loci will still be\nreported."
  type: boolean?
  inputBinding:
    prefix: --reference-update
- id: in_only_reference_update
  doc: "Flag. If switched on, Mikado will only keep loci where\nat least one of the\
    \ transcripts is marked as\n\"reference\". CAUTION: if no transcript has been\
    \ marked\nas reference, the output will be completely empty!"
  type: boolean?
  inputBinding:
    prefix: --only-reference-update
- id: in_exclude_retained_introns
  doc: "Exclude all retained intron alternative splicing\nevents from the final output.\
    \ Default: False. Retained\nintron events that do not dirsupt the CDS are kept\
    \ by\nMikado in the final output."
  type: boolean?
  inputBinding:
    prefix: --exclude-retained-introns
- id: in_keep_disrupted_cds
  doc: "Keep in the final output transcripts whose CDS is most\nprobably disrupted\
    \ by a retained intron event.\nDefault: False. Mikado will try to detect these\n\
    instances and exclude them from the final output."
  type: boolean?
  inputBinding:
    prefix: --keep-disrupted-cds
- id: in_check_references
  doc: "Flag. If switched on, Mikado will also check reference\nmodels against the\
    \ general transcript requirements,\nand will also consider them as potential fragments.\n\
    This is useful in the context of e.g. updating an *ab-\ninitio* results with data\
    \ from RNASeq, protein\nalignments, etc."
  type: boolean?
  inputBinding:
    prefix: --check-references
- id: in_min_clustering_cdna_overlap
  doc: "Minimum cDNA overlap between two transcripts for them\nto be considered part\
    \ of the same locus during the\nlate picking stages. NOTE: if --min-cds-overlap\
    \ is not\nspecified, it will be set to this value! Default: 20%."
  type: long?
  inputBinding:
    prefix: --min-clustering-cdna-overlap
- id: in_min_clustering_cds_overlap
  doc: "Minimum CDS overlap between two transcripts for them\nto be considered part\
    \ of the same locus during the\nlate picking stages. NOTE: if not specified, and\n\
    --min-cdna-overlap is specified on the command line,\nmin-cds-overlap will be\
    \ set to this value! Default:\n20%."
  type: long?
  inputBinding:
    prefix: --min-clustering-cds-overlap
- id: in_report_all_orfs
  doc: "Boolean switch. If set to true, all ORFs will be\nreported, not just the primary."
  type: boolean?
  inputBinding:
    prefix: --report-all-orfs
- id: in_cds_only
  doc: "\"Flag. If set, Mikado will only look for overlap in\nthe coding features\
    \ when clustering transcripts\n(unless one transcript is non-coding, in which\
    \ case\nthe whole transcript will be considered). Please note\nthat Mikado will\
    \ only consider the **best** ORF for\nthis. Default: False, Mikado will consider\
    \ transcripts\nin their entirety."
  type: boolean?
  inputBinding:
    prefix: --cds-only
- id: in_as_cds_only
  doc: "Flag. If set, Mikado will only consider the CDS to\ndetermine whether a transcript\
    \ is a valid alternative\nsplicing event in a locus."
  type: boolean?
  inputBinding:
    prefix: --as-cds-only
- id: in_dai_jin
  doc: "Flag. If set, the configuration file will be also\nvalid for Daijin."
  type: boolean?
  inputBinding:
    prefix: --daijin
- id: in_blast_chunks
  doc: "Number of parallel DIAMOND/BLAST jobs to run. Default:\n10."
  type: long?
  inputBinding:
    prefix: --blast-chunks
- id: in_use_blast
  doc: Flag. If switched on, Mikado will use BLAST instead of
  type: boolean?
  inputBinding:
    prefix: --use-blast
- id: in_mode
  doc: "[{nosplit,stringent,lenient,permissive,split} ...]\nMode(s) in which Mikado\
    \ will treat transcripts with\nmultiple ORFs. - nosplit: keep the transcripts\
    \ whole.\n- stringent: split multi-orf transcripts if two\nconsecutive ORFs have\
    \ both BLAST hits and none of\nthose hits is against the same target. - lenient:\n\
    split multi-orf transcripts as in stringent, and\nadditionally, also when either\
    \ of the ORFs lacks a\nBLAST hit (but not both). - permissive: like lenient,\n\
    but also split when both ORFs lack BLAST hits - split:\nsplit multi-orf transcripts\
    \ regardless of what BLAST\ndata is available. If multiple modes are specified,\n\
    Mikado will create a Daijin-compatible configuration\nfile."
  type: string?
  inputBinding:
    prefix: --mode
- id: in_scheduler
  doc: "Scheduler to use. Default: None - ie, either execute\neverything on the local\
    \ machine or use DRMAA to submit\nand control jobs (recommended)."
  type: string?
  inputBinding:
    prefix: --scheduler
- id: in_exe
  doc: Configuration file for the executables.
  type: File?
  inputBinding:
    prefix: --exe
- id: in_cluster_config
  doc: "Cluster configuration file to write to.\n"
  type: File?
  inputBinding:
    prefix: --cluster_config
- id: in_out
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 0
- id: in_strand_specific_dot
  doc: --no-files            Remove all files-specific options from the printed
  type: string
  inputBinding:
    position: 1
- id: in_diamond_dot
  doc: --use-transdecoder    Flag. If switched on, Mikado will use TransDecoder
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_json
  doc: "Output will be in JSON (default: inferred by filename,\nwith TOML as fallback)."
  type: File?
  outputBinding:
    glob: $(inputs.in_json)
- id: out_yaml
  doc: "Output will be in YAML (default: inferred by filename,\nwith TOML as fallback)."
  type: File?
  outputBinding:
    glob: $(inputs.in_yaml)
- id: out_to_ml
  doc: "Output will be in TOML (default: inferred by filename,\nwith TOML as fallback)."
  type: File?
  outputBinding:
    glob: $(inputs.in_to_ml)
- id: out_out_dir
  doc: Destination directory for the output.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out_dir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mikado:2.0.2--py37hfa133b6_0
cwlVersion: v1.1
baseCommand:
- mikado
- configure
