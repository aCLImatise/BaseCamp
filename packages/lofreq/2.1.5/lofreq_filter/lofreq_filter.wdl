version 1.0

task LofreqFilter {
  input {
    Boolean? _file_vcf_input
    File? _file_vcf_output
    Boolean? _covmin_coverage
    Boolean? _covmax_int
    Boolean? _afmin_float
    Boolean? _afmax_float
    Boolean? _sbthresh_int
    Boolean? _sbmtc_string
    Boolean? _sbalpha_float
    Boolean? sb_no_compound
    Boolean? sb_incl_indels
    Boolean? _snvqualthresh_int
    Boolean? _snvqualmtc_string
    Boolean? _snvqualalpha_float
    Boolean? _snvqualntests_int
    Boolean? _indelqualthresh_int
    Boolean? _indelqualmtc_string
    Boolean? _indelqualalpha_float
    Boolean? _indelqualntests_int
    Boolean? only_indels
    Boolean? only_sn_vs
    Boolean? print_all
    Boolean? no_defaults
    Boolean? verbose
    Boolean? debug
  }
  command <<<
    lofreq filter \
      ~{if (_file_vcf_input) then "-i" else ""} \
      ~{if (_file_vcf_output) then "-o" else ""} \
      ~{if (_covmin_coverage) then "-v" else ""} \
      ~{if (_covmax_int) then "-V" else ""} \
      ~{if (_afmin_float) then "-a" else ""} \
      ~{if (_afmax_float) then "-A" else ""} \
      ~{if (_sbthresh_int) then "-B" else ""} \
      ~{if (_sbmtc_string) then "-b" else ""} \
      ~{if (_sbalpha_float) then "-c" else ""} \
      ~{if (sb_no_compound) then "--sb-no-compound" else ""} \
      ~{if (sb_incl_indels) then "--sb-incl-indels" else ""} \
      ~{if (_snvqualthresh_int) then "-Q" else ""} \
      ~{if (_snvqualmtc_string) then "-q" else ""} \
      ~{if (_snvqualalpha_float) then "-r" else ""} \
      ~{if (_snvqualntests_int) then "-s" else ""} \
      ~{if (_indelqualthresh_int) then "-K" else ""} \
      ~{if (_indelqualmtc_string) then "-k" else ""} \
      ~{if (_indelqualalpha_float) then "-l" else ""} \
      ~{if (_indelqualntests_int) then "-m" else ""} \
      ~{if (only_indels) then "--only-indels" else ""} \
      ~{if (only_sn_vs) then "--only-snvs" else ""} \
      ~{if (print_all) then "--print-all" else ""} \
      ~{if (no_defaults) then "--no-defaults" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    _file_vcf_input: "| --in FILE                 VCF input file (no streaming supported; gzip supported)"
    _file_vcf_output: "| --out FILE                VCF output file (default: - for stdout; gzip supported)."
    _covmin_coverage: "| --cov-min INT             Minimum coverage allowed (<1=off)"
    _covmax_int: "| --cov-max INT             Maximum coverage allowed (<1=off)"
    _afmin_float: "| --af-min FLOAT            Minimum allele freq allowed (<1=off)"
    _afmax_float: "| --af-max FLOAT            Maximum allele freq allowed (<1=off)"
    _sbthresh_int: "| --sb-thresh INT           Maximum phred-value allowed. Conflicts with -b."
    _sbmtc_string: "| --sb-mtc STRING           Multiple testing correction type. One of 'bonf', 'holm' or 'fdr'. Conflicts with -B"
    _sbalpha_float: "| --sb-alpha FLOAT          Multiple testing correction pvalue threshold"
    sb_no_compound: "Don't use compound filter"
    sb_incl_indels: "Apply SB filter to indels as well"
    _snvqualthresh_int: "| --snvqual-thresh INT      Minimum phred-value allowed. Conflicts with -q"
    _snvqualmtc_string: "| --snvqual-mtc STRING      Multiple testing correction type. One of 'bonf', 'holm' or 'fdr'. Conflicts with -Q"
    _snvqualalpha_float: "| --snvqual-alpha FLOAT     Multiple testing correction pvalue threshold"
    _snvqualntests_int: "| --snvqual-ntests INT      Number of performed SNV tests for multiple testing correction"
    _indelqualthresh_int: "| --indelqual-thresh INT    Minimum phred-value allowed. Conflicts with -q"
    _indelqualmtc_string: "| --indelqual-mtc STRING    Multiple testing correction type. One of 'bonf', 'holm' or 'fdr'. Conflicts with -Q"
    _indelqualalpha_float: "| --indelqual-alpha FLOAT   Multiple testing correction pvalue threshold"
    _indelqualntests_int: "| --indelqual-ntests INT    Number of performed indel tests for multiple testing correction"
    only_indels: "Keep InDels only"
    only_sn_vs: "Keep SNVs only"
    print_all: "Print all, not just passed variants"
    no_defaults: "Remove all default filter settings"
    verbose: "Be verbose"
    debug: "Enable debugging"
  }
  output {
    File out_stdout = stdout()
    File out__file_vcf_output = "${in__file_vcf_output}"
  }
}