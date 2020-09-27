version 1.0

task LofreqPlpsummary {
  input {
    Boolean? _ref_file
    File? _file_vcf
    Boolean? _region_str
    Boolean? _bed_file
    Boolean? _minbq_int
    Boolean? _minaltbq_int
    Boolean? _defaltbq_int
    Boolean? _minjq_int
    Boolean? _minaltjq_int
    Boolean? _defaltjq_int
    Boolean? _nobaq_disable
    Boolean? _noidaq_use
    Boolean? _delbaq_values
    Boolean? _noextbaq_use
    Boolean? _minmq_int
    Boolean? _maxmq_quality
    Boolean? _nomq_dons
    Boolean? call_indels
    Boolean? only_indels
    Boolean? _srcqual_enable
    Boolean? _ignore_variants
    Boolean? _int_then
    Boolean? _sig_cutoff
    Boolean? _bonf_factor
    Boolean? _mincov_test
    Boolean? _maxdepth_int
    Boolean? illumina_one_dot_three
    Boolean? use_orphan
    Boolean? plp_summary_only
    Boolean? no_default_filter
    Boolean? force_overwrite
    Boolean? verbose
    Boolean? debug
    String lo_freq
    String var_call
    String in_dot_bam
  }
  command <<<
    lofreq plpsummary \
      ~{lo_freq} \
      ~{var_call} \
      ~{in_dot_bam} \
      ~{if (_ref_file) then "-f" else ""} \
      ~{if (_file_vcf) then "-o" else ""} \
      ~{if (_region_str) then "-r" else ""} \
      ~{if (_bed_file) then "-l" else ""} \
      ~{if (_minbq_int) then "-q" else ""} \
      ~{if (_minaltbq_int) then "-Q" else ""} \
      ~{if (_defaltbq_int) then "-R" else ""} \
      ~{if (_minjq_int) then "-j" else ""} \
      ~{if (_minaltjq_int) then "-J" else ""} \
      ~{if (_defaltjq_int) then "-K" else ""} \
      ~{if (_nobaq_disable) then "-B" else ""} \
      ~{if (_noidaq_use) then "-A" else ""} \
      ~{if (_delbaq_values) then "-D" else ""} \
      ~{if (_noextbaq_use) then "-e" else ""} \
      ~{if (_minmq_int) then "-m" else ""} \
      ~{if (_maxmq_quality) then "-M" else ""} \
      ~{if (_nomq_dons) then "-N" else ""} \
      ~{if (call_indels) then "--call-indels" else ""} \
      ~{if (only_indels) then "--only-indels" else ""} \
      ~{if (_srcqual_enable) then "-s" else ""} \
      ~{if (_ignore_variants) then "-S" else ""} \
      ~{if (_int_then) then "-T" else ""} \
      ~{if (_sig_cutoff) then "-a" else ""} \
      ~{if (_bonf_factor) then "-b" else ""} \
      ~{if (_mincov_test) then "-C" else ""} \
      ~{if (_maxdepth_int) then "-d" else ""} \
      ~{if (illumina_one_dot_three) then "--illumina-1.3" else ""} \
      ~{if (use_orphan) then "--use-orphan" else ""} \
      ~{if (plp_summary_only) then "--plp-summary-only" else ""} \
      ~{if (no_default_filter) then "--no-default-filter" else ""} \
      ~{if (force_overwrite) then "--force-overwrite" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    _ref_file: "| --ref FILE              Indexed reference fasta file (gzip supported) [null]"
    _file_vcf: "| --out FILE              Vcf output file [- = stdout]"
    _region_str: "| --region STR            Limit calls to this region (chrom:start-end) [null]"
    _bed_file: "| --bed FILE              List of positions (chr pos) or regions (BED) [null]"
    _minbq_int: "| --min-bq INT            Skip any base with baseQ smaller than INT [6]"
    _minaltbq_int: "| --min-alt-bq INT        Skip alternate bases with baseQ smaller than INT [6]"
    _defaltbq_int: "| --def-alt-bq INT        Overwrite baseQs of alternate bases (that passed bq filter) with this value (-1: use median ref-bq; 0: keep) [0]"
    _minjq_int: "| --min-jq INT            Skip any base with joinedQ smaller than INT [0]"
    _minaltjq_int: "| --min-alt-jq INT        Skip alternate bases with joinedQ smaller than INT [0]"
    _defaltjq_int: "| --def-alt-jq INT        Overwrite joinedQs of alternate bases (that passed jq filter) with this value (-1: use median ref-bq; 0: keep) [0]"
    _nobaq_disable: "| --no-baq                Disable use of base-alignment quality (BAQ)"
    _noidaq_use: "| --no-idaq               Don't use IDAQ values (NOT recommended under ANY circumstances other than debugging)"
    _delbaq_values: "| --del-baq               Delete pre-existing BAQ values, i.e. compute even if already present in BAM"
    _noextbaq_use: "| --no-ext-baq            Use 'normal' BAQ (samtools default) instead of extended BAQ (both computed on the fly if not already present in lb tag)"
    _minmq_int: "| --min-mq INT            Skip reads with mapping quality smaller than INT [0]"
    _maxmq_quality: "| --max-mq INT            Cap mapping quality at INT [255]"
    _nomq_dons: "| --no-mq                 Don't merge mapping quality in LoFreq's model"
    call_indels: "Enable indel calls (note: preprocess your file to include indel alignment qualities!)"
    only_indels: "Only call indels; no SNVs"
    _srcqual_enable: "| --src-qual              Enable computation of source quality"
    _ignore_variants: "| --ign-vcf FILE          Ignore variants in this vcf file for source quality computation. Multiple files can be given separated by commas"
    _int_then: "| --def-nm-q INT          If >= 0, then replace non-match base qualities with this default value [-1]"
    _sig_cutoff: "| --sig                   P-Value cutoff / significance level [0.010000]"
    _bonf_factor: "| --bonf                  Bonferroni factor. 'dynamic' (increase per actually performed test) or INT ['dynamic']"
    _mincov_test: "| --min-cov INT           Test only positions having at least this coverage [1]\\n(note: without --no-default-filter default filters (incl. coverage) kick in after predictions are done)"
    _maxdepth_int: "| --max-depth INT         Cap coverage at this depth [1000000]"
    illumina_one_dot_three: "Assume the quality is Illumina-1.3-1.7/ASCII+64 encoded"
    use_orphan: "Count anomalous read pairs (i.e. where mate is not aligned properly)"
    plp_summary_only: "No variant calling. Just output pileup summary per column"
    no_default_filter: "Don't run default 'lofreq filter' automatically after calling variants"
    force_overwrite: "Overwrite any existing output"
    verbose: "Be verbose"
    debug: "Enable debugging"
    lo_freq: ""
    var_call: ""
    in_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
    File out__file_vcf = "${in__file_vcf}"
  }
}