version 1.0

task LofreqPlpsummary {
  input {
    Boolean? _ref_file
    Boolean? _file_vcf
    Boolean? _region_limit
    Boolean? _bed_file
    Boolean? _minbq_int
    Boolean? _minaltbq_int
    Boolean? _defaltbq_int
    Boolean? _minjq_int
    Boolean? _minaltjq_int
    Boolean? _defaltjq_int
    Boolean? _nobaq_disable
    Boolean? _noidaq_use
    Boolean? _delete_preexisting
    Boolean? _noextbaq_use
    Boolean? _minmq_int
    Boolean? _maxmq_int
    Boolean? _nomq_dons
    Boolean? call_indels
    Boolean? only_indels
    Boolean? _srcqual_enable
    Boolean? _file_ignore
    Boolean? _int_then
    Boolean? _sig_pvalue
    Boolean? _bonf_bonferroni
    Boolean? _int_test
    Boolean? _maxdepth_int
    String lo_freq
    String var_call
    String in_dot_bam
  }
  command <<<
    lofreq plpsummary \
      ~{lo_freq} \
      ~{var_call} \
      ~{in_dot_bam} \
      ~{true="-f" false="" _ref_file} \
      ~{true="-o" false="" _file_vcf} \
      ~{true="-r" false="" _region_limit} \
      ~{true="-l" false="" _bed_file} \
      ~{true="-q" false="" _minbq_int} \
      ~{true="-Q" false="" _minaltbq_int} \
      ~{true="-R" false="" _defaltbq_int} \
      ~{true="-j" false="" _minjq_int} \
      ~{true="-J" false="" _minaltjq_int} \
      ~{true="-K" false="" _defaltjq_int} \
      ~{true="-B" false="" _nobaq_disable} \
      ~{true="-A" false="" _noidaq_use} \
      ~{true="-D" false="" _delete_preexisting} \
      ~{true="-e" false="" _noextbaq_use} \
      ~{true="-m" false="" _minmq_int} \
      ~{true="-M" false="" _maxmq_int} \
      ~{true="-N" false="" _nomq_dons} \
      ~{true="--call-indels" false="" call_indels} \
      ~{true="--only-indels" false="" only_indels} \
      ~{true="-s" false="" _srcqual_enable} \
      ~{true="-S" false="" _file_ignore} \
      ~{true="-T" false="" _int_then} \
      ~{true="-a" false="" _sig_pvalue} \
      ~{true="-b" false="" _bonf_bonferroni} \
      ~{true="-C" false="" _int_test} \
      ~{true="-d" false="" _maxdepth_int}
  >>>
  parameter_meta {
    _ref_file: "| --ref FILE              Indexed reference fasta file (gzip supported) [null]"
    _file_vcf: "| --out FILE              Vcf output file [- = stdout]"
    _region_limit: "| --region STR            Limit calls to this region (chrom:start-end) [null]"
    _bed_file: "| --bed FILE              List of positions (chr pos) or regions (BED) [null]"
    _minbq_int: "| --min-bq INT            Skip any base with baseQ smaller than INT [6]"
    _minaltbq_int: "| --min-alt-bq INT        Skip alternate bases with baseQ smaller than INT [6]"
    _defaltbq_int: "| --def-alt-bq INT        Overwrite baseQs of alternate bases (that passed bq filter) with this value (-1: use median ref-bq; 0: keep) [0]"
    _minjq_int: "| --min-jq INT            Skip any base with joinedQ smaller than INT [0]"
    _minaltjq_int: "| --min-alt-jq INT        Skip alternate bases with joinedQ smaller than INT [0]"
    _defaltjq_int: "| --def-alt-jq INT        Overwrite joinedQs of alternate bases (that passed jq filter) with this value (-1: use median ref-bq; 0: keep) [0]"
    _nobaq_disable: "| --no-baq                Disable use of base-alignment quality (BAQ)"
    _noidaq_use: "| --no-idaq               Don't use IDAQ values (NOT recommended under ANY circumstances other than debugging)"
    _delete_preexisting: "| --del-baq               Delete pre-existing BAQ values, i.e. compute even if already present in BAM"
    _noextbaq_use: "| --no-ext-baq            Use 'normal' BAQ (samtools default) instead of extended BAQ (both computed on the fly if not already present in lb tag)"
    _minmq_int: "| --min-mq INT            Skip reads with mapping quality smaller than INT [0]"
    _maxmq_int: "| --max-mq INT            Cap mapping quality at INT [255]"
    _nomq_dons: "| --no-mq                 Don't merge mapping quality in LoFreq's model"
    call_indels: "Enable indel calls (note: preprocess your file to include indel alignment qualities!)"
    only_indels: "Only call indels; no SNVs"
    _srcqual_enable: "| --src-qual              Enable computation of source quality"
    _file_ignore: "| --ign-vcf FILE          Ignore variants in this vcf file for source quality computation. Multiple files can be given separated by commas"
    _int_then: "| --def-nm-q INT          If >= 0, then replace non-match base qualities with this default value [-1]"
    _sig_pvalue: "| --sig                   P-Value cutoff / significance level [0.010000]"
    _bonf_bonferroni: "| --bonf                  Bonferroni factor. 'dynamic' (increase per actually performed test) or INT ['dynamic']"
    _int_test: "| --min-cov INT           Test only positions having at least this coverage [1] (note: without --no-default-filter default filters (incl. coverage) kick in after predictions are done)"
    _maxdepth_int: "| --max-depth INT         Cap coverage at this depth [1000000] --illumina-1.3          Assume the quality is Illumina-1.3-1.7/ASCII+64 encoded --use-orphan            Count anomalous read pairs (i.e. where mate is not aligned properly) --plp-summary-only      No variant calling. Just output pileup summary per column --no-default-filter     Don't run default 'lofreq filter' automatically after calling variants --force-overwrite       Overwrite any existing output --verbose               Be verbose --debug                 Enable debugging"
    lo_freq: ""
    var_call: ""
    in_dot_bam: ""
  }
}