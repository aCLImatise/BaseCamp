class: CommandLineTool
id: oncotator.cwl
inputs:
- id: in_verbose
  doc: 'set verbosity level [default: 5]'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_input_format
  doc: "Input format. Note that MAFLITE will work for any tsv\nfile with appropriate\
    \ headers, so long as all of the\nrequired headers (or an alias -- see maflite.config)\n\
    are present. Note that \"-i TCGAMAF\" is the same as\nspecifying \"-i MAFLITE\
    \ --prune-tcga-maf-cols --allow-\noverwriting\" [default: MAFLITE]"
  type: string?
  inputBinding:
    prefix: --input_format
- id: in_db_dir
  doc: "Main annotation database directory. [default: /xchip/c\nga/reference/annotation/db/oncotator_v1_ds_gencode_cur\n\
    rent/]"
  type: Directory?
  inputBinding:
    prefix: --db-dir
- id: in_output_format
  doc: 'Output format. [default: TCGAMAF]'
  type: string?
  inputBinding:
    prefix: --output_format
- id: in_override_config
  doc: "File path to manual annotations in a config file\nformat (section is 'manual_annotations'\
    \ and\nannotation:value pairs)."
  type: File?
  inputBinding:
    prefix: --override_config
- id: in_default_config
  doc: "File path to default annotation values in a config\nfile format (section is\
    \ 'manual_annotations' and\nannotation:value pairs)."
  type: File?
  inputBinding:
    prefix: --default_config
- id: in_no_multicore
  doc: Disables all multicore functionality.
  type: boolean?
  inputBinding:
    prefix: --no-multicore
- id: in_annotate_manual
  doc: "Specify annotations to override. Can be specified\nmultiple times. E.g. -a\
    \ 'name1:value1' -a\n'name2:value2'"
  type: long?
  inputBinding:
    prefix: --annotate-manual
- id: in_annotate_default
  doc: "Specify default values for annotations. Can be\nspecified multiple times.\
    \ E.g. -d 'name1:value1' -d\n'name2:value2'"
  type: long?
  inputBinding:
    prefix: --annotate-default
- id: in_cache_url
  doc: URL to use for cache. See help for examples.
  type: string?
  inputBinding:
    prefix: --cache-url
- id: in_read_only_cache
  doc: Makes the cache read-only
  type: boolean?
  inputBinding:
    prefix: --read_only_cache
- id: in_tx_mode
  doc: "Specify transcript mode for transcript providing\ndatasources that support\
    \ multiple modes. [default:\nCANONICAL]"
  type: string?
  inputBinding:
    prefix: --tx-mode
- id: in_infer_genotypes
  doc: "Forces the VCF output renderer to populate the output\ngenotypes as heterozygous.\
    \ This option should only be\nused when converting a MAFLITE to a VCF; otherwise,\n\
    the option has no effect. [default: false]"
  type: string?
  inputBinding:
    prefix: --infer_genotypes
- id: in_skip_no_alt
  doc: "If specified, any mutation with annotation\nalt_allele_seen of 'False' will\
    \ not be annotated or\nrendered. Do not use if output format is a VCF. If\nalt_allele_seen\
    \ annotation is missing, render the\nmutation."
  type: boolean?
  inputBinding:
    prefix: --skip-no-alt
- id: in_log_name
  doc: 'Specify log output location. Default: oncotator.log'
  type: string?
  inputBinding:
    prefix: --log_name
- id: in_prepend
  doc: "If specified for TCGAMAF output, will put a 'i_' in\nfront of fields that\
    \ are not directly rendered in\nOncotator TCGA MAFs"
  type: boolean?
  inputBinding:
    prefix: --prepend
- id: in_infer_on_ps
  doc: "Will merge adjacent SNPs,DNPs,TNPs,etc if they are in\nthe same sample. This\
    \ assumes that the input file is\nposition sorted. This may cause problems with\
    \ VCF ->\nVCF conversion, and does not guarantee input order is\nmaintained."
  type: boolean?
  inputBinding:
    prefix: --infer-onps
- id: in_canonical_tx_file
  doc: "Simple text file with list of transcript IDs (one per\nline) to always select\
    \ where possible for variants.\nTranscript IDs must match the ones used by the\n\
    transcript provider in your datasource (e.g. gencode\nENST00000123456). If more\
    \ than one transcript can be\nselected for a variant, uses the method defined\
    \ by\n--tx-mode to break ties. Using this list means that a\ntranscript will be\
    \ selected from this list first,\npossibly superseding a best-effect. Note that\n\
    transcript version number is not considered, whether\nincluded in the list or\
    \ not."
  type: File?
  inputBinding:
    prefix: --canonical-tx-file
- id: in_collapse_filter_cols
  doc: "Render FILTER columns from VCF input as single\n'filter' column when using\
    \ TCGAMAF output option."
  type: boolean?
  inputBinding:
    prefix: --collapse-filter-cols
- id: in_re_annotate_tcga_maf_cols
  doc: "Prefer new, annotated values to those specified by the\ninput file. Only useful\
    \ when output is TCGA MAF and\nwhen --allow-overwriting is specified. Automatically\n\
    turned on with -i TCGAMAF"
  type: boolean?
  inputBinding:
    prefix: --reannotate-tcga-maf-cols
- id: in_allow_overwriting
  doc: "Allow annotations to be overwritten (no\nDuplicateAnnotationException errors).\
    \ This should only\nbe used in rare cases and user should know when that\nis.\
    \ Automatically turned on with -i TCGAMAF"
  type: boolean?
  inputBinding:
    prefix: --allow-overwriting
- id: in_collapse_number_annotations
  doc: "Advanced: For TCGA MAF output, collapse a set of known\nnumeric fields that\
    \ may have been annotated with a\npipe. This can be useful for downstream tools\
    \ that are\nexpecting a single value."
  type: boolean?
  inputBinding:
    prefix: --collapse-number-annotations
- id: in_longer_other_tx
  doc: Adds some select field(s) to the other_transcript
  type: boolean?
  inputBinding:
    prefix: --longer-other-tx
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_input_file
  doc: Input file to be annotated. Type is specified through
  type: string
  inputBinding:
    position: 0
- id: in_options_dot
  doc: output_file           Output file name of annotated file.
  type: string
  inputBinding:
    position: 1
- id: in_genome_build
  doc: 'Genome build. For example: hg19'
  type: string
  inputBinding:
    position: 2
- id: in_field
  doc: --prune-filter-cols   Prune mutations from VCF input as based on 'filter'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- oncotator
