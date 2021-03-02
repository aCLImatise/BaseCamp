version 1.0

task FalconcBamfilteripa {
  input {
    Boolean? help_syntax
    Boolean? _bamsfofn_string
    Boolean? _allsubreadnamesfn_string
    Boolean? _minlen_int
    Boolean? min_frac
    String bam_filter_ipa
  }
  command <<<
    falconc bam_filter_ipa \
      ~{bam_filter_ipa} \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (_bamsfofn_string) then "-b" else ""} \
      ~{if (_allsubreadnamesfn_string) then "-a" else ""} \
      ~{if (_minlen_int) then "-m" else ""} \
      ~{if (min_frac) then "--min-frac" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pb-falconc:1.10.3--he513fc3_0"
  }
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    _bamsfofn_string: "=, --bams-fofn=             string  REQUIRED  set bams_fofn"
    _allsubreadnamesfn_string: "=, --all-subread-names-fn=  string  \\\"\\\"        set all_subread_names_fn"
    _minlen_int: "=, --min-len=               int     -1        set min_len"
    min_frac: "=                   float   0.7       set min_frac"
    bam_filter_ipa: ""
  }
  output {
    File out_stdout = stdout()
  }
}