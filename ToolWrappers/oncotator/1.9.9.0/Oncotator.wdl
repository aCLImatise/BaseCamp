version 1.0

task Oncotator {
  input {
    Boolean? verbose
    String? input_format
    Directory? db_dir
    String? output_format
    File? override_config
    File? default_config
    Boolean? no_multicore
    Int? annotate_manual
    Int? annotate_default
    String? cache_url
    Boolean? read_only_cache
    String? tx_mode
    String? infer_genotypes
    Boolean? skip_no_alt
    String? log_name
    Boolean? prepend
    Boolean? infer_on_ps
    File? canonical_tx_file
    Boolean? collapse_filter_cols
    Boolean? re_annotate_tcga_maf_cols
    Boolean? allow_overwriting
    Boolean? collapse_number_annotations
    Boolean? longer_other_tx
    Boolean? v
    String input_file
    String options_dot
    String genome_build
    String field
  }
  command <<<
    Oncotator \
      ~{input_file} \
      ~{options_dot} \
      ~{genome_build} \
      ~{field} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(input_format) then ("--input_format " +  '"' + input_format + '"') else ""} \
      ~{if defined(db_dir) then ("--db-dir " +  '"' + db_dir + '"') else ""} \
      ~{if defined(output_format) then ("--output_format " +  '"' + output_format + '"') else ""} \
      ~{if defined(override_config) then ("--override_config " +  '"' + override_config + '"') else ""} \
      ~{if defined(default_config) then ("--default_config " +  '"' + default_config + '"') else ""} \
      ~{if (no_multicore) then "--no-multicore" else ""} \
      ~{if defined(annotate_manual) then ("--annotate-manual " +  '"' + annotate_manual + '"') else ""} \
      ~{if defined(annotate_default) then ("--annotate-default " +  '"' + annotate_default + '"') else ""} \
      ~{if defined(cache_url) then ("--cache-url " +  '"' + cache_url + '"') else ""} \
      ~{if (read_only_cache) then "--read_only_cache" else ""} \
      ~{if defined(tx_mode) then ("--tx-mode " +  '"' + tx_mode + '"') else ""} \
      ~{if defined(infer_genotypes) then ("--infer_genotypes " +  '"' + infer_genotypes + '"') else ""} \
      ~{if (skip_no_alt) then "--skip-no-alt" else ""} \
      ~{if defined(log_name) then ("--log_name " +  '"' + log_name + '"') else ""} \
      ~{if (prepend) then "--prepend" else ""} \
      ~{if (infer_on_ps) then "--infer-onps" else ""} \
      ~{if defined(canonical_tx_file) then ("--canonical-tx-file " +  '"' + canonical_tx_file + '"') else ""} \
      ~{if (collapse_filter_cols) then "--collapse-filter-cols" else ""} \
      ~{if (re_annotate_tcga_maf_cols) then "--reannotate-tcga-maf-cols" else ""} \
      ~{if (allow_overwriting) then "--allow-overwriting" else ""} \
      ~{if (collapse_number_annotations) then "--collapse-number-annotations" else ""} \
      ~{if (longer_other_tx) then "--longer-other-tx" else ""} \
      ~{if (v) then "-V" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "set verbosity level [default: 5]"
    input_format: "Input format. Note that MAFLITE will work for any tsv\\nfile with appropriate headers, so long as all of the\\nrequired headers (or an alias -- see maflite.config)\\nare present. Note that \\\"-i TCGAMAF\\\" is the same as\\nspecifying \\\"-i MAFLITE --prune-tcga-maf-cols --allow-\\noverwriting\\\" [default: MAFLITE]"
    db_dir: "Main annotation database directory. [default: /xchip/c\\nga/reference/annotation/db/oncotator_v1_ds_gencode_cur\\nrent/]"
    output_format: "Output format. [default: TCGAMAF]"
    override_config: "File path to manual annotations in a config file\\nformat (section is 'manual_annotations' and\\nannotation:value pairs)."
    default_config: "File path to default annotation values in a config\\nfile format (section is 'manual_annotations' and\\nannotation:value pairs)."
    no_multicore: "Disables all multicore functionality."
    annotate_manual: "Specify annotations to override. Can be specified\\nmultiple times. E.g. -a 'name1:value1' -a\\n'name2:value2'"
    annotate_default: "Specify default values for annotations. Can be\\nspecified multiple times. E.g. -d 'name1:value1' -d\\n'name2:value2'"
    cache_url: "URL to use for cache. See help for examples."
    read_only_cache: "Makes the cache read-only"
    tx_mode: "Specify transcript mode for transcript providing\\ndatasources that support multiple modes. [default:\\nCANONICAL]"
    infer_genotypes: "Forces the VCF output renderer to populate the output\\ngenotypes as heterozygous. This option should only be\\nused when converting a MAFLITE to a VCF; otherwise,\\nthe option has no effect. [default: false]"
    skip_no_alt: "If specified, any mutation with annotation\\nalt_allele_seen of 'False' will not be annotated or\\nrendered. Do not use if output format is a VCF. If\\nalt_allele_seen annotation is missing, render the\\nmutation."
    log_name: "Specify log output location. Default: oncotator.log"
    prepend: "If specified for TCGAMAF output, will put a 'i_' in\\nfront of fields that are not directly rendered in\\nOncotator TCGA MAFs"
    infer_on_ps: "Will merge adjacent SNPs,DNPs,TNPs,etc if they are in\\nthe same sample. This assumes that the input file is\\nposition sorted. This may cause problems with VCF ->\\nVCF conversion, and does not guarantee input order is\\nmaintained."
    canonical_tx_file: "Simple text file with list of transcript IDs (one per\\nline) to always select where possible for variants.\\nTranscript IDs must match the ones used by the\\ntranscript provider in your datasource (e.g. gencode\\nENST00000123456). If more than one transcript can be\\nselected for a variant, uses the method defined by\\n--tx-mode to break ties. Using this list means that a\\ntranscript will be selected from this list first,\\npossibly superseding a best-effect. Note that\\ntranscript version number is not considered, whether\\nincluded in the list or not."
    collapse_filter_cols: "Render FILTER columns from VCF input as single\\n'filter' column when using TCGAMAF output option."
    re_annotate_tcga_maf_cols: "Prefer new, annotated values to those specified by the\\ninput file. Only useful when output is TCGA MAF and\\nwhen --allow-overwriting is specified. Automatically\\nturned on with -i TCGAMAF"
    allow_overwriting: "Allow annotations to be overwritten (no\\nDuplicateAnnotationException errors). This should only\\nbe used in rare cases and user should know when that\\nis. Automatically turned on with -i TCGAMAF"
    collapse_number_annotations: "Advanced: For TCGA MAF output, collapse a set of known\\nnumeric fields that may have been annotated with a\\npipe. This can be useful for downstream tools that are\\nexpecting a single value."
    longer_other_tx: "Adds some select field(s) to the other_transcript"
    v: ""
    input_file: "Input file to be annotated. Type is specified through"
    options_dot: "output_file           Output file name of annotated file."
    genome_build: "Genome build. For example: hg19"
    field: "--prune-filter-cols   Prune mutations from VCF input as based on 'filter'"
  }
  output {
    File out_stdout = stdout()
  }
}